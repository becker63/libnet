import unittest
import libnet

suite "nftnl table props typing (runtime)":
  test "string props roundtrip":
    var t = Table.create()
    t.name = "roundtrip"
    check t.name == "roundtrip"

  test "uint32 props roundtrip":
    var t = Table.create()
    t.family = AF_INET
    check t.family == AF_INET

  test "uint64 props roundtrip":
    var t = Table.create()
    t.handle = 12345'u64
    check t.handle == 12345'u64

suite "nftnl table props sugar":
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
    t.flags = 7'u32
    check t.flags == 7'u32

  test "table.handle roundtrip":
    var t = Table.create()
    t.handle = 99999'u64
    check t.handle == 99999'u64

  test "table.userdata roundtrip":
    var t = Table.create()
    t.userdata = "u-data"
    check t.userdata == "u-data"
