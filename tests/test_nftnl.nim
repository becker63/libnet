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

suite "nftnl iterators (stubbed)":
  test "empty table list iterates safely":
    var list = TableList.create()

    var count = 0
    for table in tableIter(list):
      discard table # should not enter here
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

suite "test attr casting is correct":
  test "set/get string attr works":
    var t = Table.create()
    t.setAttr(NFTNL_TABLE_NAME, "mytable")
    check t.getAttr(NFTNL_TABLE_NAME, string) == "mytable"

  test "set/get family works":
    var t = Table.create()
    t.setAttr(NFTNL_TABLE_FAMILY, AF_INET.uint32)
    check t.getAttr(NFTNL_TABLE_FAMILY, uint32) == AF_INET.uint32
