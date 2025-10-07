import unittest
import libnet

suite "libnet smoke test":
  test "table pretty-prints":
    var t = Table.create()
    t.family = AF_INET
    t.name = "filter"
    var buf = newString(512)
    let written = nftnl_table_snprintf(
      cast[ptr uint8](buf.cstring),
      buf.len.csize_t,
      t.raw,
      NFTNL_OUTPUT_DEFAULT.uint32,
      0'u32,
    )
    check written > 0
    echo "=== nftnl_table_snprintf ==="
    echo buf[0 ..< written]

  test "chain pretty-prints":
    var c = Chain.create()
    c.family = AF_INET
    c.table = "filter"
    c.name = "input"
    c.typeName = "filter"
    c.hooknum = NF_INET_LOCAL_IN.uint32
    c.prio = 0'u32
    c.policy = NF_ACCEPT.uint32
    var buf = newString(512)
    let written = nftnl_chain_snprintf(
      cast[ptr uint8](buf.cstring),
      buf.len.csize_t,
      c.raw,
      NFTNL_OUTPUT_DEFAULT.uint32,
      0'u32,
    )
    check written > 0
    echo "=== nftnl_chain_snprintf ==="
    echo buf[0 ..< written]

  test "rule with simple cmp expr pretty-prints":
    var r = Rule.create()
    r.family = AF_INET.uint32
    r.table = "filter"
    r.chain = "input"
    var e = CmpExpr.create()
    e.sreg = 1'u32
    e.op = NFT_CMP_EQ
    e.data = @[0x12'u8, 0x34'u8]
    addExpr(r, move(e))
    var buf = newString(1024)
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
