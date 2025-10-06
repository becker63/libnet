import unittest
import libnet

suite "nftnl chain basics":
  test "chain alloc/free":
    var c = Chain.create()
    check not c.raw.isNil

suite "nftnl chain iterators (stubbed)":
  test "empty chain list iterates safely":
    var list = ChainList.create()
    var count = 0
    for chain in chainIter(list):
      discard chain
      inc count
    check count == 0

suite "nftnl chain attr typing compile time":
  test "string attrs accept only string":
    static:
      var c: Chain
      doAssert compiles(c.setAttr(NFTNL_CHAIN_NAME, "ok"))
      doAssert compiles(c.getAttr(NFTNL_CHAIN_NAME))
      doAssert not compiles(c.setAttr(NFTNL_CHAIN_NAME, 123))

  test "uint32 attrs accept only integer types":
    static:
      var c: Chain
      doAssert compiles(c.setAttr(NFTNL_CHAIN_FAMILY, 1))
      doAssert compiles(c.getAttr(NFTNL_CHAIN_FAMILY))
      doAssert not compiles(c.setAttr(NFTNL_CHAIN_FAMILY, "nope"))

  test "uint64 attrs accept only 64-bit ints":
    static:
      var c: Chain
      doAssert compiles(c.setAttr(NFTNL_CHAIN_HANDLE, 42))
      doAssert compiles(c.getAttr(NFTNL_CHAIN_HANDLE))
      doAssert not compiles(c.setAttr(NFTNL_CHAIN_HANDLE, "wrong"))

suite "nftnl chain attr typing":
  test "string attrs roundtrip":
    var c = Chain.create()
    c.setAttr(NFTNL_CHAIN_NAME, "roundtrip")
    check c.getAttr(NFTNL_CHAIN_NAME) == "roundtrip"

  test "uint32 attrs roundtrip":
    var c = Chain.create()
    c.setAttr(NFTNL_CHAIN_FAMILY, AF_INET)
    check c.getAttr(NFTNL_CHAIN_FAMILY) == AF_INET

  test "uint64 attrs roundtrip":
    var c = Chain.create()
    c.setAttr(NFTNL_CHAIN_HANDLE, 12345)
    check c.getAttr(NFTNL_CHAIN_HANDLE) == 12345

suite "nftnl chain props sugar":
  test "chain.name roundtrip":
    var c = Chain.create()
    c.name = "viaProps"
    check c.name == "viaProps"

  test "chain.table roundtrip":
    var c = Chain.create()
    c.table = "tbl"
    check c.table == "tbl"

  test "chain.family roundtrip":
    var c = Chain.create()
    c.family = AF_INET
    check c.family == AF_INET

  test "chain.hooknum roundtrip":
    var c = Chain.create()
    c.hooknum = 1
    check c.hooknum == 1

  test "chain.prio roundtrip":
    var c = Chain.create()
    c.prio = 5
    check c.prio == 5

  test "chain.policy roundtrip":
    var c = Chain.create()
    c.policy = 0
    check c.policy == 0

  test "chain.handle roundtrip":
    var c = Chain.create()
    c.handle = 99999
    check c.handle == 99999

  test "chain.userdata roundtrip":
    var c = Chain.create()
    c.userdata = "u-data"
    check c.userdata == "u-data"
