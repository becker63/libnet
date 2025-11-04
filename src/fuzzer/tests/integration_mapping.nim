import unittest
import ../harness/proto_raw as pb
import harness

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

  test "table with mixed expressions prints detailed mapping (payload/cmp/meta/bitwise/immediate/ct)":
    # --- Payload expression (with checksum fields set) ---
    let payloadExpr = pb.Expr(
      `type`: pb.ExprType.EXPR_PAYLOAD,
      dreg: 2'u32,
      base: 1'u32,
      offset: 0x20'u32,
      len: 4'u32,
      csum_type: 1'u32,
      csum_offset: 2'u32,
      csum_flags: 0x3'u32,
    )

    # --- Compare expression ---
    let cmpExpr = pb.Expr(
      `type`: pb.ExprType.EXPR_CMP,
      sreg: 1'u32,
      op: 0x1'u32,
      data: @[0xde'u8, 0xad'u8, 0xbe'u8, 0xef'u8],
    )

    # --- Metadata expression ---
    let metaExpr = pb.Expr(`type`: pb.ExprType.EXPR_META, key: 1'u32, dreg: 1'u32)

    # --- Bitwise expression ---
    let bitwiseExpr = pb.Expr(
      `type`: pb.ExprType.EXPR_BITWISE,
      sreg: 1'u32,
      dreg: 1'u32,
      op: 1'u32,
      len: 2'u32,
      mask: @[0xff'u8, 0x00'u8],
      `xor`: @[0x01'u8, 0x00'u8],
    )

    # --- Immediate expressions (data + verdict variants) ---
    let immDataExpr = pb.Expr(
      `type`: pb.ExprType.EXPR_IMMEDIATE,
      dreg: 1'u32,
      data: @[0x01'u8, 0x02'u8, 0x03'u8],
    )

    let immVerdictExpr = pb.Expr(
      `type`: pb.ExprType.EXPR_IMMEDIATE,
      verdict: NF_ACCEPT.uint32,
      chain: "next_chain",
      chain_id: 42'u32,
    )

    # --- Conntrack expression (newly added) ---
    let conntrackExpr = pb.Expr(
      `type`: pb.ExprType.EXPR_CT,
      key: 5'u32, # e.g., NFT_CT_STATE
      dreg: 2'u32, # destination register
      op: 1'u32, # direction (e.g., ORIGINAL)
    )

    # --- Rule containing all expressions ---
    let rule = pb.Rule(
      family: AF_INET.uint32,
      table: "filter",
      chain: "input",
      exprs:
        @[
          payloadExpr, cmpExpr, metaExpr, bitwiseExpr, immDataExpr, immVerdictExpr,
          conntrackExpr,
        ],
    )

    # --- Chain + Table nesting ---
    let chain =
      pb.Chain(family: AF_INET.uint32, table: "filter", name: "input", rules: @[rule])

    let table = pb.Table(family: AF_INET.uint32, name: "filter", chains: @[chain])

    let top = pb.Top(tables: @[table])

    echo "---- Running buildTop() with payload + cmp + meta + bitwise + immediate + ct ----"
    discard buildTop(top)
    echo "---- Done ----"
