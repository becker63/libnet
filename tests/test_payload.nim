import unittest
import libnet

suite "Payload + Cmp expression integration":
  test "builds payload and cmp expression chain into rule and prints":
    # 1️⃣  Table and base chain setup
    var t = Table.create()
    t.family = AF_INET
    t.name = "filter"

    var c = Chain.create()
    c.family = AF_INET
    c.table = "filter"
    c.name = "input"
    c.typeName = "filter"
    c.hooknum = NF_INET_LOCAL_IN.uint32
    c.prio = 0'u32
    c.policy = NF_ACCEPT.uint32

    # 2️⃣  Create a rule inside that chain
    var r = Rule.create()
    r.family = AF_INET
    r.table = "filter"
    r.chain = "input"

    # 3️⃣  Payload expression: load EtherType (2 bytes at offset 12)
    var p = PayloadExpr.create()
    p.base = NFT_PAYLOAD_LL_HEADER # Ethernet header base
    p.offset = 12 # Offset of EtherType field
    p.len = 2 # 2 bytes
    p.dreg = NFT_REG_1 # store in register 1
    addExpr(r, move p)

    # 4️⃣  Cmp expression: compare to 0x0800 (IPv4 EtherType)
    var e = CmpExpr.create()
    e.sreg = NFT_REG_1 # source reg (matches payload)
    e.op = NFT_CMP_EQ # equality comparison
    e.data = @[0x08'u8, 0x00'u8] # EtherType IPv4
    addExpr(r, move e)

    # 5️⃣  Build the Netlink message
    let seq = 1'u32
    let nlh =
      newNlMsg(NFT_MSG_NEWRULE.cint, AF_INET.cint, NLM_F_CREATE or NLM_F_ACK, seq)
    buildRuleMsg(nlh, r)

    # 6️⃣  Pretty-print the rule
    var buf = newString(4096)
    let written = nftnl_rule_snprintf(
      cast[ptr uint8](buf.cstring),
      buf.len.csize_t,
      r.raw,
      NFTNL_OUTPUT_DEFAULT.uint32,
      0'u32,
    )
    check written > 0
    echo "=== nftnl_rule_snprintf (Payload + Cmp) ==="
    echo buf[0 ..< written]

    # 7️⃣  Sanity assertions
    check "payload" in buf
    check "cmp" in buf
    check "0x0800" in buf or "0800" in buf
