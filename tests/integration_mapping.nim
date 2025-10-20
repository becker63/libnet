import unittest
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
    discard buildTop(top)
    echo "---- Done ----"

    test "table with mixed expressions prints detailed mapping":
      let payloadExpr = pb.Expr(
        `type`: 1'u32,
        payload: pb.ExprPayload(
          dreg: 2'u32,
          base: 1'u32, # NFT_PAYLOAD_LL_HEADER (example)
          offset: 0x20'u32,
          len: 4'u32,
        ),
      )

      let cmpExpr = pb.Expr(
        `type`: 2'u32,
        cmp: pb.ExprCmp(
          sreg: 1'u32,
          op: 0x1'u32, # NFT_CMP_EQ
          data: @[0xde'u8, 0xad'u8, 0xbe'u8, 0xef'u8],
        ),
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
      discard buildTop(top)
      echo "---- Done ----"
