# harness/export_fuzz.nim
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

# --- Protobuf decoding ---
proc decodeTop*(data: openArray[byte]): pb.Top =
  try:
    result = Protobuf.decode(data, pb.Top)
  except CatchableError as e:
    fileEcho "[decodeTop] parse error: " & e.msg
    result = pb.Top()

# --- Main fuzz entrypoint ---
proc run_from_pb*(
    data: ptr uint8, len: csize_t
): cint {.exportc: "run_from_pb", cdecl, dynlib.} =
  try:
    fileEcho ">>> run_from_pb invoked (" & $len & " bytes)"
    var buf = newSeq[byte](len)
    copyMem(addr buf[0], data, len)
    let top = decodeTop(buf)
    fileEcho "top.tables.len = " & $top.tables.len
    if top.tables.len == 0:
      fileEcho "[info] Empty or invalid Top"
      return 0

    for t in top.tables:
      fileEcho "--- Table ---"
      fileEcho "name: " & t.name
      fileEcho "family: " & $t.family
      #if t.family == 42 or t.family == 0x2A or
      #    (t.name.len > 0 and ord(t.name[0]) == 0x66):
      #  echo "[BUG] triggered intentional crash path"
      #  flushLogs()
      #  quit(1)

    buildTop(top)
    flushLogs()
    return 0
  except CatchableError as e:
    fileEcho "[Nim fuzz harness error] " & e.msg
    flushLogs()
    return -1
