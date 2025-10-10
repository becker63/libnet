discard """
action: "run"
"""

import unittest2 as unittest
import libnet

suite "nftnl Rule RAII and props":
  # Allocation / Freeing
  test "Rule alloc/free":
    var r = Rule.create()
    check not r.raw.isNil

  # Move semantics
  test "Rule move transfers ownership":
    var r1 = Rule.create()
    var r2 = move r1
    check r1.raw.isNil
    check not r2.raw.isNil

  # Property setters/getters
  test "Rule basic properties":
    var r = Rule.create()
    r.family = AF_INET.uint32
    r.table = "filter"
    r.chain = "input"

    check r.family == AF_INET.uint32
    check r.table == "filter"
    check r.chain == "input"

  # Ensure userdata roundtrip works
  test "Rule userdata property":
    var r = Rule.create()
    r.userdata = "customdata"
    check r.userdata == "customdata"
