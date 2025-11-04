# mappings/serialize.nim
import ../nftnl/raii/[basics]
import ../nftnl/attrs/[rule, chain, table]
import ../messageBuilder

const
  NFT_MSG_NEWTABLE* = 0x10'u32
  NFT_MSG_NEWCHAIN* = 0x11'u32
  NFT_MSG_NEWRULE* = 0x12'u32
  NLM_F_CREATE* = 0x400'u32
  NLM_F_EXCL* = 0x200'u32
  NLM_F_ACK* = 0x4'u32

proc serializeTableWithNewNlMsg*(t: basics.Table, seqNum: uint32): seq[uint8] =
  let nlh = newNlMsg(
    NFT_MSG_NEWTABLE.cint,
    t.family.cint,
    (NLM_F_CREATE or NLM_F_EXCL or NLM_F_ACK).cint,
    seqNum,
  )
  buildTableMsg(nlh, t)
  result = cast[seq[uint8]](cast[ptr UncheckedArray[uint8]](nlh))
  result.setLen(MNL_SOCKET_BUFFER_SIZE)

proc serializeChainWithNewNlMsg*(c: basics.Chain, seqNum: uint32): seq[uint8] =
  let nlh = newNlMsg(
    NFT_MSG_NEWCHAIN.cint,
    c.family.cint,
    (NLM_F_CREATE or NLM_F_EXCL or NLM_F_ACK).cint,
    seqNum,
  )
  buildChainMsg(nlh, c)
  result = cast[seq[uint8]](cast[ptr UncheckedArray[uint8]](nlh))
  result.setLen(MNL_SOCKET_BUFFER_SIZE)

proc serializeRuleWithNewNlMsg*(r: basics.Rule, seqNum: uint32): seq[uint8] =
  let nlh = newNlMsg(
    NFT_MSG_NEWRULE.cint,
    r.family.cint,
    (NLM_F_CREATE or NLM_F_EXCL or NLM_F_ACK).cint,
    seqNum,
  )
  buildRuleMsg(nlh, r)
  result = cast[seq[uint8]](cast[ptr UncheckedArray[uint8]](nlh))
  result.setLen(MNL_SOCKET_BUFFER_SIZE)
