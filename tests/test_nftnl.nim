import unittest
import libnet

suite "nftnl basics":
  test "table alloc/free":
    var t = Table.create()
    check not t.raw.isNil

  test "chain alloc/free":
    var c = Chain.create()
    check not c.raw.isNil

  test "rule alloc/free":
    var r = Rule.create()
    check not r.raw.isNil

  test "rset alloc/free":
    var s = Set.create()
    check not s.raw.isNil

suite "nftnl iterators (stubbed)":
  test "empty table list iterates safely":
    var list = TableList.create()
    var count = 0
    for table in tableIter(list):
      discard table
      inc count
    check count == 0

  test "empty chain list iterates safely":
    var list = ChainList.create()
    var count = 0
    for c in chainIter(list):
      discard c
      inc count
    check count == 0

  test "empty rule list iterates safely":
    var list = RuleList.create()
    var count = 0
    for r in ruleIter(list):
      discard r
      inc count
    check count == 0

  test "empty set list iterates safely":
    var list = SetList.create()
    var count = 0
    for s in setIter(list):
      discard s
      inc count
    check count == 0

suite "nftnl attr typing compile time":
  test "string attrs accept only string":
    static:
      var t: Table
      doAssert compiles(t.setAttr(NFTNL_TABLE_NAME, "ok"))
      doAssert compiles(t.getAttr(NFTNL_TABLE_NAME))
      doAssert not compiles(t.setAttr(NFTNL_TABLE_NAME, 123))

  test "uint32 attrs accept only integer types":
    static:
      var t: Table
      # use plain Nim literals, not AF_INET (C consts can't be folded at CT)
      doAssert compiles(t.setAttr(NFTNL_TABLE_FAMILY, 1'u32))
      doAssert compiles(t.getAttr(NFTNL_TABLE_FAMILY))
      doAssert not compiles(t.setAttr(NFTNL_TABLE_FAMILY, "nope"))

  test "uint64 attrs accept only 64-bit ints":
    static:
      var t: Table
      # literal must be explicitly suffixed
      doAssert compiles(t.setAttr(NFTNL_TABLE_HANDLE, 42'u64))
      doAssert compiles(t.getAttr(NFTNL_TABLE_HANDLE))
      doAssert not compiles(t.setAttr(NFTNL_TABLE_HANDLE, "wrong"))

suite "nftnl attr typing":
  test "string attrs roundtrip":
    var t = Table.create()
    t.setAttr(NFTNL_TABLE_NAME, "roundtrip")
    check t.getAttr(NFTNL_TABLE_NAME) == "roundtrip"

  test "uint32 attrs roundtrip":
    var t = Table.create()
    t.setAttr(NFTNL_TABLE_FAMILY, AF_INET) # ergonomic with C constant
    check t.getAttr(NFTNL_TABLE_FAMILY) == AF_INET

  test "uint64 attrs roundtrip":
    var t = Table.create()
    t.setAttr(NFTNL_TABLE_HANDLE, 12345) # ergonomic
    check t.getAttr(NFTNL_TABLE_HANDLE) == 12345'u64

suite "nftnl props sugar":
  test "table.name roundtrip":
    var t = Table.create()
    t.name = "viaProps"
    check t.name == "viaProps"

  test "table.family roundtrip":
    var t = Table.create()
    t.family = AF_INET
    check t.family == AF_INET

  test "table.flags roundtrip":
    var t = Table.create()
    t.flags = 7
    check t.flags == 7'u32

  test "table.handle roundtrip":
    var t = Table.create()
    t.handle = 99999'u64
    check t.handle == 99999'u64

  test "table.userdata roundtrip":
    var t = Table.create()
    t.userdata = "u-data"
    check t.userdata == "u-data"
