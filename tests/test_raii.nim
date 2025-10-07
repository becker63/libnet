import unittest
import libnet

suite "nftnl RAII and move-only semantics":
  # Allocation
  test "Table alloc/free":
    var t = Table.create()
    check not t.raw.isNil

  test "Chain alloc/free":
    var c = Chain.create()
    check not c.raw.isNil

  test "Rule alloc/free":
    var r = Rule.create()
    check not r.raw.isNil

  test "Set alloc/free":
    var s = Set.create()
    check not s.raw.isNil

  test "Expression alloc/free":
    let e = Expression.create("cmp")
    check not e.raw.isNil

  # Move semantics
  test "Table move transfers ownership":
    var t1 = Table.create()
    var t2 = move t1
    check t1.raw.isNil
    check not t2.raw.isNil

  test "Chain move transfers ownership":
    var c1 = Chain.create()
    var c2 = move c1
    check c1.raw.isNil
    check not c2.raw.isNil

  test "Rule move transfers ownership":
    var r1 = Rule.create()
    var r2 = move r1
    check r1.raw.isNil
    check not r2.raw.isNil

  test "Set move transfers ownership":
    var s1 = Set.create()
    var s2 = move s1
    check s1.raw.isNil
    check not s2.raw.isNil

  test "Expression move transfers ownership":
    var e1 = Expression.create("cmp")
    var e2 = move e1
    check e1.raw.isNil
    check not e2.raw.isNil

  # Scope exit (no double free)
  test "Move temporary Table then scope-exit frees cleanly":
    var t2: Table
    block:
      var t1 = Table.create()
      t2 = move t1
      check not t2.raw.isNil
      check t1.raw.isNil
    check not t2.raw.isNil
