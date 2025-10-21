import std/[strutils, streams, os, posix, times]
import ./proto_raw as pb
import ./libnet
import ./mappings
import protobuf_serialization
import ../mutator/coverage

const
  LogPath = "/tmp/nim_fuzz.log"
  FlushEvery = 20
  FlushSeconds = 2.0

var
  logBuffer: seq[string]
  lastFlush = epochTime()

# ---------------------------------------------------------------------------
# Logging
# ---------------------------------------------------------------------------

proc flushLogs() =
  if logBuffer.len == 0:
    return
  try:
    var f = open(LogPath, fmAppend)
    for msg in logBuffer:
      f.writeLine(msg)
    f.close()
    logBuffer.setLen(0)
    lastFlush = epochTime()
  except CatchableError:
    discard

proc fileEcho(msg: string) =
  logBuffer.add(msg)
  let now = epochTime()
  if logBuffer.len >= FlushEvery or (now - lastFlush) > FlushSeconds:
    flushLogs()

# ---------------------------------------------------------------------------
# Protobuf decoding
# ---------------------------------------------------------------------------

proc decodeTop*(data: openArray[byte]): pb.Top =
  try:
    result = Protobuf.decode(data, pb.Top)
  except CatchableError as e:
    fileEcho "[decodeTop] parse error: " & e.msg
    result = pb.Top()

# ---------------------------------------------------------------------------
# Sanitization helpers
# ---------------------------------------------------------------------------

proc sanitizeExpr(e: var pb.Expr) =
  ## Per-expression light normalization (flattened schema)
  # Cap blobs to prevent large allocations
  if e.data.len > 1024:
    e.data.setLen(256)
  if e.mask.len > 1024:
    e.mask.setLen(256)
  if e.xor.len > 1024:
    e.xor.setLen(256)
  # Cap strings
  if e.str.len > 256:
    e.str = e.str.substr(0, 256)
  if e.chain.len > 128:
    e.chain = e.chain.substr(0, 128)
  # Cap obviously large numbers
  if e.offset > 10_000_000'u32:
    e.offset = e.offset mod 65536'u32
  if e.len > 1_000_000'u32:
    e.len = 1024'u32
  # Normalize small fields
  e.base = e.base and 0xff'u32
  e.dreg = e.dreg and 0xff'u32
  e.sreg = e.sreg and 0xff'u32
  e.op = e.op and 0xffff'u32
  e.key = e.key and 0xffff'u32

  let kind = int(e.`type`)
  if kind < 1 or kind > 9:
    e.`type` = 0'u32
    e.data = @[]
    e.mask = @[]
    e.xor = @[]
    e.str = ""
    return

  case kind
  of 1: # payload
    if e.base > 0xff'u32:
      e.base = e.base and 0xff'u32
    if e.dreg > 0xff'u32:
      e.dreg = e.dreg and 0xff'u32
  of 2: # cmp
    if e.data.len == 0:
      e.data = @[0x12'u8, 0x34'u8]
    elif e.data.len > 64:
      e.data.setLen(16)
    e.op = e.op and 0x7'u32
    e.sreg = e.sreg and 0xff'u32
  of 3: # meta
    if e.str.len > 64:
      e.str = e.str.substr(0, 64)
    e.key = e.key and 0xffff'u32
  of 4: # bitwise
    if e.len > 64'u32:
      e.len = 64'u32
    if e.mask.len == 0:
      e.mask = @[0xff'u8]
    if e.mask.len > 64:
      e.mask.setLen(16)
    if e.xor.len > 64:
      e.xor.setLen(16)
  of 5: # immediate
    if e.data.len > 128:
      e.data.setLen(32)
    if e.chain.len > 64:
      e.chain = e.chain.substr(0, 64)
  of 6:
    discard
  # counter
  of 7: # ct
    e.op = e.op and 0x1'u32
    e.key = e.key and 0xffff'u32
    e.dreg = e.dreg and 0xff'u32
  of 8: # limit
    if e.base > 1_000_000'u32:
      e.base = e.base mod 100000'u32
    if e.len > 3600'u32:
      e.len = e.len mod 3600'u32
    e.key = e.key and 0xff'u32
  of 9: # quota
    if e.base > 10_000_000'u32:
      e.base = e.base mod 1_000_000'u32
    e.op = e.op and 0xff'u32
  else:
    discard

proc sanitizeRule(
    r: var pb.Rule, parentTable, parentChain: string, parentFamily: uint32
) =
  if r.table.len == 0:
    r.table = parentTable
  if r.chain.len == 0:
    r.chain = parentChain
  if r.family == 0'u32:
    r.family = parentFamily
  for ei in 0 ..< r.exprs.len:
    sanitizeExpr(r.exprs[ei])

proc sanitizeChain(c: var pb.Chain, parentTable: string, parentFamily: uint32) =
  if c.table.len == 0:
    c.table = parentTable
  if c.name.len == 0:
    c.name = "input"
  if c.`type`.len == 0:
    c.`type` = "filter"
  if c.hook > 255'u32:
    c.hook = c.hook mod 256'u32
  if c.prio > 1000000 or c.prio < -1000000:
    c.prio = 0
  if c.policy != 0'u32 and c.policy != 1'u32:
    c.policy = 1'u32
  for ri in 0 ..< c.rules.len:
    sanitizeRule(c.rules[ri], c.table, c.name, parentFamily)

proc sanitizeTable(t: var pb.Table) =
  if t.name.len == 0:
    t.name = "filter"
  if t.family == 0'u32:
    t.family = 2'u32
  for ci in 0 ..< t.chains.len:
    sanitizeChain(t.chains[ci], t.name, t.family)

proc sanitizeTop*(top: var pb.Top) =
  if top.tables.len == 0:
    return
  for ti in 0 ..< top.tables.len:
    sanitizeTable(top.tables[ti])

# ---------------------------------------------------------------------------
# Main fuzz entrypoint
# ---------------------------------------------------------------------------

proc run_from_pb*(
    data: ptr uint8, len: csize_t
): cint {.exportc: "run_from_pb", cdecl, dynlib.} =
  try:
    fileEcho ">>> run_from_pb invoked (" & $len & " bytes)"
    var buf = newSeq[byte](len)
    copyMem(addr buf[0], data, len)
    var top = decodeTop(buf)
    sanitizeTop(top)
    fileEcho "top.tables.len = " & $top.tables.len
    if top.tables.len == 0:
      fileEcho "[info] Empty or invalid Top"
      return 0

    for t in top.tables:
      fileEcho "--- Table ---"
      fileEcho "name: " & t.name
      fileEcho "family: " & $t.family

    discard buildTop(top)
    flushLogs()
    return 0
  except CatchableError as e:
    fileEcho "[Nim fuzz harness error] " & e.msg
    flushLogs()
    return -1
