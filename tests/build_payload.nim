import unittest
import libnet

suite "libnet integration test":
  test "build table+base chain+rule+expr into nlmsg and pretty-print":
    # Step 1: construct a table
    var t = Table.create()
    t.family = AF_INET
    t.name = "filter"

    # Step 2: construct a **base chain**
    var c = Chain.create()
    c.family = AF_INET.uint32
    c.table = "filter"
    c.name = "input"
    c.typeName = "filter"
    c.hooknum = NF_INET_LOCAL_IN.uint32
    c.prio = 0'u32
    c.policy = NF_ACCEPT.uint32

    # Step 3: construct a rule
    var r = Rule.create()
    r.family = AF_INET.uint32
    r.table = "filter"
    r.chain = "input"

    # Step 4: add a cmp expression (sreg == 0x1234)
    var e = CmpExpr.create()
    e.sreg = 1'u32
    e.op = NFT_CMP_EQ
    e.data = @[0x12'u8, 0x34'u8]
    addExpr(r, move e) # move, so no copy/double free

    # Step 5: prepare nlmsg buffer
    let seq = 1'u32
    let nlh =
      newNlMsg(NFT_MSG_NEWRULE.cint, AF_INET.cint, NLM_F_CREATE or NLM_F_ACK, seq)

    # Step 6: build payload from rule
    buildRuleMsg(nlh, r)

    # Step 7: pretty-print with snprintf
    var buf = newString(4096)
    let written = nftnl_rule_snprintf(
      cast[ptr uint8](buf.cstring),
      buf.len.csize_t,
      r.raw,
      NFTNL_OUTPUT_DEFAULT.uint32,
      0'u32,
    )
    check written > 0
    echo "=== nftnl_rule_snprintf ==="
    echo buf[0 ..< written]
