# mappings/util.nim

when defined(DEBUG_MAPPING):
  proc dbg*(msg: string) =
    echo msg

else:
  template dbg*(msg: string) =
    discard

proc toU32Le*(b: openArray[uint8]): uint32 =
  case b.len
  of 0:
    0'u32
  of 1:
    uint32(b[0])
  of 2:
    uint32(b[0]) or (uint32(b[1]) shl 8)
  else:
    uint32(b[0]) or (uint32(b[1]) shl 8) or (uint32(b[2]) shl 16) or
      (uint32(b[3]) shl 24)

proc bytesToStr*(b: seq[uint8]): string =
  if b.len == 0:
    return ""
  result = newString(b.len)
  for i in 0 ..< b.len:
    result[i] = char(b[i])

template has*(mask: uint32, bit: int): bool =
  (mask and (1'u32 shl bit)) != 0
