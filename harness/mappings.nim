# harness/mappings.nim
import ./libnet as nft
import ./proto_raw as pb
import ./messageBuilder
import ./nftnl/attrs/expr/all
import macros

# ──────────────────────────────────────────────────────────────
# Debug control
# Enable with: nim c -d:DEBUG_MAPPING harness/export_fuzz.nim
# ──────────────────────────────────────────────────────────────
when defined(DEBUG_MAPPING):
  proc dbg(msg: string) =
    echo msg

else:
  template dbg(msg: string) =
    discard

# ──────────────────────────────────────────────────────────────

# Helpers to unpack protobuf Attr.data into numeric or string types
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

proc toU64Le*(b: openArray[uint8]): uint64 =
  result = 0
  for i, byte in b:
    result = result or (uint64(byte) shl (i * 8))

proc bytesToStr*(b: seq[uint8]): string =
  if b.len == 0:
    return ""
  result = newString(b.len)
  for i, byte in b:
    result[i] = char(byte)

template assignAttrExpr*(obj: typed, id: uint32, data: seq[uint8]) =
  when compiles(expectedType(attr = id.enumType)):
    when expectedType(attr = id.enumType) is uint32:
      obj.setAttr(id.enumType, data.toU32Le)
    elif expectedType(attr = id.enumType) is uint64:
      obj.setAttr(id.enumType, data.toU64Le)
    elif expectedType(attr = id.enumType) is string:
      obj.setAttr(id.enumType, data.bytesToStr)
    else:
      discard
  else:
    discard

proc toNftnlExpr*(x: pb.Expr): nft.Expression =
  var e: nft.Expression
  case x.`type`
  of 1'u32:
    e = nft.Expression(nft.PayloadExpr.create())
  of 2'u32:
    e = nft.Expression(nft.CmpExpr.create())
  else:
    dbg "      [warn] unknown expr type=" & $x.`type`
    return nft.Expression()
  for a in x.attrs:
    assignAttrExpr(e, a.id, a.data)
  e

proc toNftnlRule*(x: pb.Rule): nft.Rule =
  let r = nft.Rule.create()
  r.family = x.family
  r.table = x.table
  r.chain = x.chain
  dbg "    → Rule(family=" & $x.family & ", table=" & x.table & ", chain=" & x.chain &
    ")"

  for ex in x.exprs:
    var e = toNftnlExpr(ex)
    if e.raw.isNil:
      dbg "      [skip] invalid expr; not adding"
      continue
    addExpr(r, e)
  r

proc toNftnlChain*(x: pb.Chain): nft.Chain =
  let c = nft.Chain.create()
  c.family = x.family
  c.table = x.table
  c.name = x.name
  dbg "  → Chain(" & x.name & ") table=" & x.table
  for r in x.rules:
    discard toNftnlRule(r)
  c

proc toNftnlTable*(x: pb.Table): nft.Table =
  let t = nft.Table.create()
  t.family = x.family
  t.name = x.name
  dbg "→ Table(" & x.name & ") family=" & $x.family
  for ch in x.chains:
    discard toNftnlChain(ch)
  t

proc buildTop*(x: pb.Top) =
  for t in x.tables:
    discard toNftnlTable(t)
