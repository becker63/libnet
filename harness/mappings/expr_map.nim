# mappings/expr_map.nim
import proto_raw as pbraw
import nftnl/raii/expresions
import
  nftnl/attrs/expr/
    [all, cmp, payload, meta, bitwise, immediate, counter, ct, limit, quota]
import ./util

proc toNftnlExpr*(x: pbraw.Expr): expresions.Expression =
  var e: expresions.Expression

  case ord(x.`type`)
  of 1: # payload
    e = expresions.Expression(expresions.PayloadExpr.create())
    setU32(toRaw(e), payload.idPayloadDreg, x.dreg)
    setU32(toRaw(e), payload.idPayloadBase, x.base)
    setU32(toRaw(e), payload.idPayloadOffset, x.offset)
    setU32(toRaw(e), payload.idPayloadLen, x.len)
    if x.csum_type != 0'u32:
      setU32(toRaw(e), payload.idPayloadCsumType, x.csum_type)
    if x.csum_offset != 0'u32:
      setU32(toRaw(e), payload.idPayloadCsumOffset, x.csum_offset)
    if x.csum_flags != 0'u32:
      setU32(toRaw(e), payload.idPayloadFlags, x.csum_flags)
  of 2: # cmp
    e = expresions.Expression(expresions.CmpExpr.create())
    setU32(toRaw(e), cmp.idCmpSreg, x.sreg)
    setU32(toRaw(e), cmp.idCmpOp, x.op)
    if x.data.len > 0:
      setBlob(toRaw(e), cmp.idCmpData, x.data)
  of 3: # meta
    e = expresions.Expression(expresions.MetaExpr.create())
    setU32(toRaw(e), meta.idMetaKey, x.key)
    if x.sreg != 0'u32:
      setU32(toRaw(e), meta.idMetaSreg, x.sreg)
    if x.dreg != 0'u32:
      setU32(toRaw(e), meta.idMetaDreg, x.dreg)
    if x.str.len > 0:
      setStr(toRaw(e), meta.idMetaSreg, x.str)
  of 4: # bitwise
    e = expresions.Expression(expresions.BitwiseExpr.create())
    setU32(toRaw(e), bitwise.idBitwiseSreg, x.sreg)
    setU32(toRaw(e), bitwise.idBitwiseDreg, x.dreg)
    setU32(toRaw(e), bitwise.idBitwiseLen, x.len)
    if x.op != 0'u32:
      setU32(toRaw(e), bitwise.idBitwiseOp, x.op)
    if x.mask.len > 0:
      setBlob(toRaw(e), bitwise.idBitwiseMask, x.mask)
    if x.xor.len > 0:
      setBlob(toRaw(e), bitwise.idBitwiseXor, x.xor)
    if x.data.len > 0:
      setBlob(toRaw(e), bitwise.idBitwiseData, x.data)
  of 5: # immediate
    e = expresions.Expression(expresions.ImmediateExpr.create())
    if x.dreg != 0'u32:
      setU32(toRaw(e), immediate.idImmDreg, x.dreg)
    if x.data.len > 0:
      setBlob(toRaw(e), immediate.idImmData, x.data)
    elif x.verdict != 0'u32:
      setU32(toRaw(e), immediate.idImmVerdict, x.verdict)
      if x.chain.len > 0:
        setStr(toRaw(e), immediate.idImmChain, x.chain)
      if x.chain_id != 0'u32:
        when declared(immediate.idImmChainId):
          setU32(toRaw(e), immediate.idImmChainId, x.chain_id)
  of 6: # counter
    e = expresions.Expression(expresions.CounterExpr.create())
  of 7: # ct (conntrack)
    e = expresions.Expression(expresions.CtExpr.create())
    if x.key != 0'u32:
      setU32(toRaw(e), ct.idCtKey, x.key)
    if x.dreg != 0'u32:
      setU32(toRaw(e), ct.idCtDreg, x.dreg)
    if x.op != 0'u32:
      setU32(toRaw(e), ct.idCtDir, x.op)
  of 8: # limit
    e = expresions.Expression(expresions.LimitExpr.create())
    if x.base != 0'u32:
      setU32(toRaw(e), limit.idLimitRate, x.base)
    if x.len != 0'u32:
      setU32(toRaw(e), limit.idLimitUnit, x.len)
    if x.op != 0'u32:
      setU32(toRaw(e), limit.idLimitBurst, x.op)
    if x.key != 0'u32:
      setU32(toRaw(e), limit.idLimitType, x.key)
    if x.attr_mask != 0'u32:
      setU32(toRaw(e), limit.idLimitFlags, x.attr_mask)
  of 9: # quota
    e = expresions.Expression(expresions.QuotaExpr.create())
    if x.base != 0'u32:
      setU64(toRaw(e), quota.idQuotaBytes, uint64(x.base))
    if x.op != 0'u32:
      setU32(toRaw(e), quota.idQuotaFlags, x.op)
  else:
    dbg "      [warn] unknown/unsupported expr type=" & $ord(x.`type`)
    return expresions.Expression()

  e
