{ pkgs, fenv }:
pkgs.writeShellScriptBin "coverage-report" ''
  ${fenv.toolchain.shellEnvHook}

  echo "→ merging profiles"
  $PROF merge -sparse /tmp/fuzz-*.profraw -o /tmp/merged.profdata

  TRACE="/tmp/coverage.info"

  echo "→ exporting LCOV tracefile"
  $COV export \
    --format=lcov \
    --instr-profile=/tmp/merged.profdata \
    --object=${fenv.toolchain.libnftnlCov}/lib/libnftnl.so \
    --object=${fenv.toolchain.libmnlCov}/lib/libmnl.so \
    "$(command -v lpm-consumer-fuzz)" \
    > "$TRACE"

  echo "$TRACE"
''
