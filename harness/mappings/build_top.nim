# mappings/build_top.nim
import proto_raw as pbraw
import nftnl/raii/basics
import ./rule_chain_table
import ./serialize
import ./util

proc buildTop*(x: pbraw.Top): seq[seq[uint8]] =
  result = @[]
  var seqNum: uint32 = 1
  for tpb in x.tables:
    let t = toNftnlTable(tpb)
    result.add serializeTableWithNewNlMsg(t, seqNum)
    seqNum.inc
    for cpb in tpb.chains:
      let c = toNftnlChain(cpb)
      result.add serializeChainWithNewNlMsg(c, seqNum)
      seqNum.inc
      for rpb in cpb.rules:
        let r = toNftnlRule(rpb)
        result.add serializeRuleWithNewNlMsg(r, seqNum)
        seqNum.inc
