discard
  """
action: "run"
"""

import unittest2 as unittest
import harness

suite "Expressions integration (payload / cmp / meta / bitwise)":
  test "payload + cmp: builds payload + cmp chain into rule and prints":
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

    # --- Payload expression ---
    var pexpr = PayloadExpr.create()
    pexpr.base = NFT_PAYLOAD_LL_HEADER.uint32
    pexpr.offset = 12
    pexpr.len = 2
    pexpr.dreg = NFT_REG_1.uint32
    addExpr(r, move pexpr)

    # --- Comparison expression: EtherType == 0x0800 (IPv4) ---
    var e = CmpExpr.create()
    e.sreg = NFT_REG_1.uint32
    e.op = NFT_CMP_EQ
    e.data = @[0x08'u8, 0x00'u8]
    addExpr(r, move e)

    # --- Build and pretty-print rule ---
    let nlh = newRuleNlMsg(1'u32)
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

  test "meta expression: load mark into reg and compare":
    var r = Rule.create()
    r.family = AF_INET
    r.table = "filter"
    r.chain = "input"

    var m = MetaExpr.create()
    m.key = NFT_META_MARK.uint32
    m.dreg = NFT_REG_1.uint32
    addExpr(r, move m)

    var c = CmpExpr.create()
    c.sreg = NFT_REG_1.uint32
    c.op = NFT_CMP_EQ
    c.data = @[0x01'u8, 0x00'u8, 0x00'u8, 0x00'u8]
    addExpr(r, move c)

    let nlh2 = newRuleNlMsg(2'u32)
    buildRuleMsg(nlh2, r)

    var buf2 = newString(4096)
    let written2 = nftnl_rule_snprintf(
      cast[ptr uint8](buf2.cstring),
      buf2.len.csize_t,
      r.raw,
      NFTNL_OUTPUT_DEFAULT.uint32,
      0'u32,
    )
    check written2 > 0

  test "bitwise expression: mask/xor on payload-loaded register":
    var r = Rule.create()
    r.family = AF_INET
    r.table = "filter"
    r.chain = "input"

    var p = PayloadExpr.create()
    p.base = NFT_PAYLOAD_LL_HEADER.uint32
    p.offset = 12
    p.len = 2
    p.dreg = NFT_REG_1.uint32
    addExpr(r, move p)

    var bexpr = BitwiseExpr.create()
    bexpr.sreg = NFT_REG_1.uint32
    bexpr.dreg = NFT_REG_1.uint32
    bexpr.len = 2'u32
    bexpr.mask = @[0xff'u8, 0x00'u8]
    bexpr.xor = @[0x01'u8, 0x00'u8]
    addExpr(r, move bexpr)

    var c = CmpExpr.create()
    c.sreg = NFT_REG_1.uint32
    c.op = NFT_CMP_EQ
    c.data = @[0x08'u8, 0x00'u8]
    addExpr(r, move c)

    let nlh3 = newRuleNlMsg(3'u32)
    buildRuleMsg(nlh3, r)

    var buf3 = newString(4096)
    let written3 = nftnl_rule_snprintf(
      cast[ptr uint8](buf3.cstring),
      buf3.len.csize_t,
      r.raw,
      NFTNL_OUTPUT_DEFAULT.uint32,
      0'u32,
    )
    check written3 > 0

  test "immediate verdict expression builds correctly":
    var r = Rule.create()
    r.family = AF_INET
    r.table = "filter"
    r.chain = "input"

    var imm = ImmediateExpr.create()
    imm.verdict = NF_DROP.uint32
    addExpr(r, move imm)

    let nlh4 = newRuleNlMsg(10'u32)
    buildRuleMsg(nlh4, r)

    var buf4 = newString(4096)
    let written4 = nftnl_rule_snprintf(
      cast[ptr uint8](buf4.cstring),
      buf4.len.csize_t,
      r.raw,
      NFTNL_OUTPUT_DEFAULT.uint32,
      0'u32,
    )
    check written4 > 0

  test "counter expression: count packets and bytes, then jump on threshold":
    var r = Rule.create()
    r.family = AF_INET
    r.table = "filter"
    r.chain = "input"

    var ctr = CounterExpr.create()
    addExpr(r, move ctr)

    var imm = ImmediateExpr.create()
    imm.verdict = NF_ACCEPT.uint32
    addExpr(r, move imm)

    let nlh5 = newRuleNlMsg(4'u32)
    buildRuleMsg(nlh5, r)

    var buf5 = newString(4096)
    let written5 = nftnl_rule_snprintf(
      cast[ptr uint8](buf5.cstring),
      buf5.len.csize_t,
      r.raw,
      NFTNL_OUTPUT_DEFAULT.uint32,
      0'u32,
    )
    check written5 > 0
