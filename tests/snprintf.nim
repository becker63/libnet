import unittest
import libnet

suite "libnet smoke test":
  test "rule with simple cmp expr pretty-prints":
    # Step 1: construct a rule (family/table/chain set)
    var r = Rule.create()
    r.family = AF_INET.uint32
    r.table = "filter"
    r.chain = "input"

    # Step 2: add a cmp expression (sreg == 0x1234)
    var e = Expression.create("cmp") # <-- var, not let
    e.sreg = 1'u32
    e.op = NFT_CMP_EQ
    e.data = @[0x12'u8, 0x34'u8]
    addExpr(r, move(e)) # ownership transferred, e.raw = nil afterward

    # Step 3: pretty-print rule via libnftnl
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
