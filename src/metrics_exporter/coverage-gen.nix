{ pkgs, fenv }:
pkgs.writeShellScriptBin "coverage-report" ''
  set -euo pipefail

  ${fenv.toolchain.shellEnvHook}

  # Ensure /tmp exists and is writable
  mkdir -p /tmp || true
  chmod 1777 /tmp || true

  TRACE="/tmp/coverage.info"

  # --- Check required tools ---
  if ! command -v "$PROF" >/dev/null; then
    echo "[coverage-report] PROF binary missing: $PROF"
    exit 0
  fi

  if ! command -v "$COV" >/dev/null; then
    echo "[coverage-report] COV binary missing: $COV"
    exit 0
  fi

  # --- Ensure we have any profiles ---
  if ! ls /tmp/fuzz-*.profraw >/dev/null 2>&1; then
    echo "[coverage-report] no profraw files, nothing to export."
    exit 0
  fi

  echo "→ merging profiles"
  if ! $PROF merge -sparse /tmp/fuzz-*.profraw -o /tmp/merged.profdata 2>/dev/null; then
    echo "[coverage-report] merge failed"
    exit 0
  fi

  echo "→ exporting LCOV tracefile"
  if ! $COV export \
      --format=lcov \
      --instr-profile=/tmp/merged.profdata \
      --object=${fenv.toolchain.libnftnlCov}/lib/libnftnl.so \
      --object=${fenv.toolchain.libmnlCov}/lib/libmnl.so \
      "$(command -v lpm-consumer-fuzz)" \
      > "$TRACE" 2>/dev/null; then
    echo "[coverage-report] export failed"
    exit 0
  fi

  # Only print the path if the file actually exists
  if [ -f "$TRACE" ]; then
    echo "$TRACE"
  else
    echo "[coverage-report] done, but no trace generated"
  fi

  exit 0
''
