import unittest
import libnet

suite "nftnl chain iterators (stubbed)":
  test "empty chain list iterates safely":
    var list = ChainList.create()
    var count = 0
    for chain in chainIter(list):
      discard chain
      inc count
    check count == 0

suite "nftnl chain props typing (runtime)":
  test "string props roundtrip":
    var c = Chain.create()
    c.name = "roundtrip"
    check c.name == "roundtrip"

  test "uint32 props roundtrip":
    var c = Chain.create()
    c.family = AF_INET
    check c.family == AF_INET

  test "uint64 props roundtrip":
    var c = Chain.create()
    c.handle = 12345'u64
    check c.handle == 12345'u64

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
    c.hooknum = 1'u32
    check c.hooknum == 1'u32

  test "chain.prio roundtrip":
    var c = Chain.create()
    c.prio = 5'u32
    check c.prio == 5'u32

  test "chain.policy roundtrip":
    var c = Chain.create()
    c.policy = 0'u32
    check c.policy == 0'u32

  test "chain.handle roundtrip":
    var c = Chain.create()
    c.handle = 99999'u64
    check c.handle == 99999'u64

  test "chain.userdata roundtrip":
    var c = Chain.create()
    c.userdata = "u-data"
    check c.userdata == "u-data"
