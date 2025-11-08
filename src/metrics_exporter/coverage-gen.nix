{
  pkgs,
  fenv,
  fuzzer,
}:

pkgs.writeShellApplication {
  name = "coverage-report";
  runtimeInputs = [
    fuzzer
  ];
  text = ''
    set -euo pipefail
    ${fenv.toolchain.shellEnvHook}

    WORKDIR="/mounted"
    TRACE="$WORKDIR/coverage.info"
    MERGED="$WORKDIR/merged.profdata"
    MERGE_LOG="$WORKDIR/merge.log"
    TARGET="$(command -v lpm-consumer-fuzz || true)"

    echo "[coverage-report] checking profraw files in $WORKDIR"

    shopt -s nullglob

    echo "→ merging profiles"
    # capture stderr into merge.log
    if ! "$PROF" merge -sparse $WORKDIR/fuzz-*.profraw -o "$MERGED" 2> "$MERGE_LOG"; then
      echo "[coverage-report] merge failed!"
      echo "====== merge stderr ======"
      cat "$MERGE_LOG" || true
      echo "====== profile list ======"
      ls -lh $WORKDIR/fuzz-*.profraw || true
      exit 1
    fi

    echo "→ merge succeeded"
    echo "====== merge stderr (even on success) ======"
    cat "$MERGE_LOG" || true

    echo "→ exporting LCOV tracefile"
    if ! "$COV" export \
      --format=lcov \
      --instr-profile="$MERGED" \
      --object=${fenv.toolchain.libnftnlCov}/lib/libnftnl.so \
      --object=${fenv.toolchain.libmnlCov}/lib/libmnl.so \
      "$TARGET" \
      > "$TRACE" 2>/dev/null; then
      echo "[coverage-report] export failed"
      exit 1
    fi

    if [ -f "$TRACE" ]; then
      echo "$TRACE"
    else
      echo "[coverage-report] no trace generated"
    fi
  '';
}
