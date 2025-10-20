import std/[strutils, streams, os, posix, times]
import ./proto_raw as pb
import ./libnet
import ./mappings
import protobuf_serialization

const
  LogPath = "/tmp/nim_fuzz.log"
  FlushEvery = 20 # flush after 20 messages
  FlushSeconds = 2.0 # or after 2 seconds since last flush

var
  logBuffer: seq[string]
  lastFlush = epochTime()

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
  ## Buffered file logger — flushes periodically.
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
# In-Nim sanitization / post-processing  (updated for flattened schema)
# ---------------------------------------------------------------------------
proc sanitizeTop*(top: var pb.Top) =
  ## Normalize decoded protobufs to keep nftnl happy.
  for ti in 0 ..< top.tables.len:
    var t = addr top.tables[ti]
    if t.name.len == 0:
      t.name = "filter"
    if t.family == 0'u32:
      t.family = 2'u32 # AF_INET

    for ci in 0 ..< t.chains.len:
      var c = addr t.chains[ci]
      if c.table.len == 0:
        c.table = t.name
      if c.name.len == 0:
        c.name = "input"
      if c.`type`.len == 0:
        c.`type` = "filter"
      if c.hook == 0'u32:
        c.hook = 1'u32 # NF_INET_LOCAL_IN
      # clamp prio to int16 range expected by kernel paths
      if c.prio > 32767 or c.prio < -32768:
        c.prio = 0
      # avoid set-literal on uint32 (Nim warns); just compare:
      if c.policy != 0'u32 and c.policy != 1'u32:
        c.policy = 1'u32 # NF_ACCEPT

      for ri in 0 ..< c.rules.len:
        var r = addr c.rules[ri]
        if r.table.len == 0:
          r.table = c.table
        if r.chain.len == 0:
          r.chain = c.name
        if r.family == 0'u32:
          r.family = t.family

        # Expr sanitation for flattened schema
        for ei in 0 ..< r.exprs.len:
          var e = addr r.exprs[ei]
          case e.`type`
          of 1'u32: # payload
            # bound obvious fields
            if e.payload.len > 4096'u32:
              e.payload.len = 256'u32
            if e.payload.offset > 1_000_000'u32:
              e.payload.offset = e.payload.offset mod 2048'u32
            # ensure base/dreg are small-ish (callers can still set exact constants)
            e.payload.base = e.payload.base and 0xff'u32
            e.payload.dreg = e.payload.dreg and 0xff'u32
          of 2'u32: # cmp
            if e.cmp.data.len == 0:
              e.cmp.data = @[0x12'u8, 0x34'u8]
            elif e.cmp.data.len > 64:
              e.cmp.data.setLen(16)
            # keep op/sreg in a sane range
            e.cmp.op = e.cmp.op and 0x7'u32 # fits typical enum range 0..6
            e.cmp.sreg = e.cmp.sreg and 0xff'u32
          else:
            # unknown type → neutralize
            e.`type` = 0'u32

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

    # Map protobuf to our bindings mappings.nim
    buildTop(top)
    flushLogs()
    return 0
  except CatchableError as e:
    fileEcho "[Nim fuzz harness error] " & e.msg
    flushLogs()
    return -1
