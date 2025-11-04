import unittest
import ../harness/export_fuzz as fuzz
import ../harness/proto_raw as pb
import std/[sequtils, strutils]
import protobuf_serialization

suite "sanitizeTop() and run_from_pb() integration":
  test "sanitizeTop fills defaults for minimal protobuf":
    var top = pb.Top(
      tables:
        @[
          pb.Table(
            family: 0,
            name: "",
            chains:
              @[
                pb.Chain(
                  family: 0,
                  table: "",
                  name: "",
                  `type`: "",
                  hook: 0,
                  prio: 99999'i32,
                  policy: 42'u32,
                  rules:
                    @[
                      pb.Rule(
                        family: 0,
                        table: "",
                        chain: "",
                        exprs:
                          @[
                            pb.Expr(
                              `type`: 1,
                              payload:
                                pb.ExprPayload(dreg: 0, base: 0, offset: 0, len: 0),
                            ),
                            pb.Expr(
                              `type`: 2, cmp: pb.ExprCmp(sreg: 0, op: 0, data: @[])
                            ),
                          ],
                      )
                    ],
                )
              ],
          )
        ]
    )

    fuzz.sanitizeTop(top)

    let t = top.tables[0]
    check t.name == "filter"
    check t.family == 2 # AF_INET default
    let c = t.chains[0]
    check c.table == "filter"
    check c.name == "input"
    check c.`type` == "filter"
    check c.hook == 1
    check c.policy == 1'u32
    check c.rules.len == 1

    let r = c.rules[0]
    check r.table == "filter"
    check r.chain == "input"
    check r.family == 2
    check r.exprs.len == 2

    let payload = r.exprs[0]
    let cmp = r.exprs[1]
    check payload.payload.len == 0
    check cmp.cmp.data.len == 2
    check cmp.cmp.data == @[0x12'u8, 0x34'u8]

  test "run_from_pb handles valid Top input end-to-end":
    let top = pb.Top(
      tables:
        @[
          pb.Table(
            family: 2,
            name: "filter",
            chains:
              @[
                pb.Chain(
                  family: 2,
                  table: "filter",
                  name: "input",
                  `type`: "filter",
                  hook: 1,
                  prio: 0,
                  policy: 1'u32,
                  rules: @[pb.Rule(family: 2, table: "filter", chain: "input")],
                )
              ],
          )
        ]
    )

    let data = Protobuf.encode(top)
    let result = fuzz.run_from_pb(unsafeAddr data[0], data.len.csize_t)
    check result == 0
