import unittest
import libnet

suite "nftnl rule expr iteration":
  test "add and iterate expressions (sugar)":
    # create a rule using sugar constructor
    var r = newRule(AF_INET, "filter", "input")

    # build expressions using high-level builders
    let cmpE = cmpEq(1, 0, "abcd") # from cmpprops
    let payloadE = payloadExpr("transport", 8'u32, 2'u32) # from exprprops

    # add expressions safely (auto-move)
    r.add(cmpE)
    r.add(payloadE)

    # iterate expressions and collect kinds
    var kinds: seq[string]
    for e in exprIter(r):
      kinds.add(e.kind)

    # assertions
    check kinds.len == 2
    check "cmp" in kinds
    check "payload" in kinds
