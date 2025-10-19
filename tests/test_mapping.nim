import unittest
import ../harness/mapping/mappings
import ../harness/proto_raw as pb
import libnet

suite "Mapping conversions from Protobuf → nftnl":
  test "table → chain → rule prints correctly":
    var rule = pb.Rule(family: AF_INET.uint32, table: "filter", chain: "input")
    var chain =
      pb.Chain(family: AF_INET.uint32, table: "filter", name: "input", rules: @[rule])
    var table = pb.Table(family: AF_INET.uint32, name: "filter", chains: @[chain])
    var top = pb.Top(tables: @[table])

    echo "---- Running buildTop() ----"
    buildTop(top)
    echo "---- Done ----"

  test "table with mixed expressions prints detailed mapping":
    let payloadExpr = pb.Expr(
      `type`: 1, # payload
      attrs:
        @[
          pb.Attr(id: uint32(1), data: @[0x10'u8]), # base
          pb.Attr(id: uint32(2), data: @[0x20'u8]), # offset
          pb.Attr(id: uint32(3), data: @[0x04'u8]), # len
          pb.Attr(id: uint32(4), data: @[0x02'u8]), # dreg
        ],
    )

    let cmpExpr = pb.Expr(
      `type`: 2, # cmp
      attrs:
        @[
          pb.Attr(id: uint32(1), data: @[0x01'u8]), # sreg
          # Coerce enum to bytes:
          pb.Attr(id: uint32(2), data: @[NFT_CMP_EQ.ord.uint8]), # op
          pb.Attr(id: uint32(3), data: @[0xde'u8, 0xad'u8, 0xbe'u8, 0xef'u8]), # data
        ],
    )

    let rule = pb.Rule(
      family: AF_INET.uint32,
      table: "filter",
      chain: "input",
      exprs: @[payloadExpr, cmpExpr],
    )

    let chain =
      pb.Chain(family: AF_INET.uint32, table: "filter", name: "input", rules: @[rule])
    let table = pb.Table(family: AF_INET.uint32, name: "filter", chains: @[chain])
    let top = pb.Top(tables: @[table])

    echo "---- Running buildTop() with payload + cmp ----"
    buildTop(top)
    echo "---- Done ----"
