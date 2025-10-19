discard
  """
action: "run"
"""

import unittest2 as unittest
import libnet

suite "Payload + Cmp expression integration (raw payload fill)":
  test "builds payload + cmp chain into rule and prints":
    # --- Table ---
    var t = Table.create()
    t.family = AF_INET
    t.name = "filter"

    # --- Base chain ---
    var c = Chain.create()
    c.family = AF_INET
    c.table = "filter"
    c.name = "input"
    c.typeName = "filter"
    c.hooknum = NF_INET_LOCAL_IN.uint32
    c.prio = 0'u32
    c.policy = NF_ACCEPT.uint32

    # --- Rule ---
    var r = Rule.create()
    r.family = AF_INET
    r.table = "filter"
    r.chain = "input"

    # --- Payload expression: direct raw attribute fill ---
    var pexpr = PayloadExpr.create()
    pexpr.base = NFT_PAYLOAD_LL_HEADER.uint32 # link-layer header
    pexpr.offset = 12 # EtherType offset
    pexpr.len = 2 # 2 bytes
    pexpr.dreg = NFT_REG_1.uint32 # destination register
    addExpr(r, move pexpr)

    # --- Comparison expression: EtherType == 0x0800 (IPv4) ---
    var e = CmpExpr.create()
    e.sreg = NFT_REG_1.uint32
    e.op = NFT_CMP_EQ
    e.data = @[0x08'u8, 0x00'u8]
    addExpr(r, move e)

    # --- Build and pretty-print rule ---
    let seq = 1'u32
    let nlh =
      newNlMsg(NFT_MSG_NEWRULE.cint, AF_INET.cint, NLM_F_CREATE or NLM_F_ACK, seq)
    buildRuleMsg(nlh, r)

    var buf = newString(4096)
    let written = nftnl_rule_snprintf(
      cast[ptr uint8](buf.cstring),
      buf.len.csize_t,
      r.raw,
      NFTNL_OUTPUT_DEFAULT.uint32,
      0'u32,
    )

    check written > 0
    #echo ""
    #echo buf[0 ..< written]
    #echo ""
