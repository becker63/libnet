import unittest
import libnet

suite "nftnl expression basics":
  test "cmp attribute roundtrip":
    let e = Expression.create("cmp")

    # Use real libnftnl constants
    e.sreg = 1'u32 # Source register NFT_REG_1
    e.op = NFT_CMP_EQ # Comparison operator "=="
    e.data = @[0x12'u8, 0x34'u8] # Two-byte blob for comparison

    check e.sreg == 1
    check e.op == NFT_CMP_EQ
    check e.data == @[0x12'u8, 0x34'u8]

  test "cmp greater-than operator":
    let e = Expression.create("cmp")

    e.sreg = 2'u32
    e.op = NFT_CMP_GT # Comparison operator ">"
    e.data = @[0xFF'u8]

    check e.op == NFT_CMP_GT
    check e.data == @[0xFF'u8]
