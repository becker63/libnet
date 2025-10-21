# --- Code generation ---------------------------------------------------

gen-nftnl:
    nim r -d:useFuthark -d:nodeclguards -d:futharkRebuild harness/nftnl/generator.nim

gen-linux:
    nim r -d:useFuthark -d:nodeclguards -d:futharkRebuild harness/linux/generator.nim

gen-mnl:
    nim r -d:useFuthark -d:ncmake --build buildodeclguards -d:futharkRebuild harness/mnl/generator.nim

gen:
    just gen-linux
    just gen-nftnl
    just gen-mnl


# --- Testing -----------------------------------------------------------

rmcache:
    rm -rf ~/.cache/nim

test-all:
    nim r tests/test_all.nim

test-core:
    nim r tests/test_core.nim

test-integration:
    nim r tests/test_integration.nim

test FILE:
    echo "🔹 Running {{FILE}}"
    nim r "{{FILE}}"


# --- Benchmarks --------------------------------------------------------

bench:
    nim c -r tests/bench.nim


# --- Build and run fuzz harness ---------------------------------------

rebuild:
    rm -rf build
    cmake -B build -S .
    cmake --build build

build-release:
    @echo "→ Building release fuzz harness (FASTFUZZ mode)"
    cmake -B build -DFASTFUZZ=ON -DCMAKE_BUILD_TYPE=Release
    cmake --build build -j

fuzz-opt:
    @echo "→ Running optimized fuzz harness"
    @./build/lpm-consumer-fuzz \
        -max_total_time=30 \
        -max_len=1024 \
        -jobs=$(nproc) \
        -workers=$(nproc) \
        -use_value_profile=1 \
        -print_final_stats=1

run-opt:
    just build-release
    just fuzz-opt


# --- Profiling --------------------------------------------------------

perf:
    @echo "→ Running 5s perf profile with libFuzzer harness"
    perf record -F 99 -g -- \
      ./build/lpm-consumer-fuzz -max_total_time=5 -max_len=512
    @echo "→ Collapsing stacks..."
    perf script | inferno-collapse-perf > out.folded
    @echo "→ Generating flamegraph..."
    inferno-flamegraph < out.folded > flame.svg
    @echo "✅ Flamegraph written to flame.svg"

view-flame:
    chromium flame.svg


# --- Metrics Stack (Prometheus + Grafana via Podman) -----------------------

set shell := ["bash", "-eu", "-o", "pipefail", "-c"]

metrics-build:
    echo "🚀 Building and loading Prometheus + Grafana into Podman..."
    nix run .#prometheus-container.copyToPodman
    nix run .#grafana-container.copyToPodman
    echo "✅ Images loaded into Podman as:"
    podman images | grep -E "prometheus|grafana" || true

metrics-rebuild:
    echo "🧱 Rebuilding metrics containers..."
    just metrics-down
    just metrics-build
    just metrics-up
    echo "✅ Metrics stack rebuilt and restarted!"

metrics-up:
    echo "🧹 Stopping any old containers..."
    podman rm -f prometheus grafana >/dev/null 2>&1 || true

    echo "▶️ Starting Prometheus (port 9090, host network)..."
    podman run -d \
      --name prometheus \
      --network host \
      -p 9090:9090 \
      prometheus:latest

    echo "▶️ Starting Grafana (port 3000, host network)..."
    podman run -d \
      --name grafana \
      --network host \
      -p 3000:3000 \
      -v grafana-data:/var/lib/grafana \
      -v grafana-logs:/var/log/grafana \
      grafana:latest

    echo ""
    echo "✅ Metrics stack running (host network)!"
    echo "   • Prometheus → http://localhost:9090"
    echo "   • Grafana → http://localhost:3000 (admin / admin)"

metrics-down:
    echo "🛑 Stopping metrics stack..."
    podman stop grafana prometheus || true
    echo "✅ Stopped."

metrics-logs:
    @echo "🧾 Tailing Grafana + Prometheus logs (Ctrl+C to exit)"
    podman logs -f grafana &
    podman logs -f prometheus


# --- Corpus persistence ------------------------------------------------

save-corpus:
  #!/usr/bin/env bash
  set -euo pipefail

  TARGET_DIR="${TARGET_DIR:-./saved_corpus}"

  echo "💾 Saving current corpus from /dev/shm/libfuzz_corpus → $TARGET_DIR"
  mkdir -p "$TARGET_DIR"

  if [[ -d /dev/shm/libfuzz_corpus ]]; then
    echo "📂 Syncing files (no deletions)..."
    rsync -a --ignore-existing /dev/shm/libfuzz_corpus/ "$TARGET_DIR"/
    echo "✅ Corpus saved to $TARGET_DIR"
  else
    echo "⚠️  No active in-memory corpus found at /dev/shm/libfuzz_corpus"
  fi


load-corpus:
  #!/usr/bin/env bash
  set -euo pipefail

  SRC_DIR="${SRC_DIR:-./saved_corpus}"
  DEST_DIR="/dev/shm/libfuzz_corpus"

  echo "♻️  Loading corpus from $SRC_DIR → $DEST_DIR"
  mkdir -p "$DEST_DIR"

  if [[ -d "$SRC_DIR" ]]; then
    echo "📂 Syncing files into in-memory corpus (no deletions)..."
    rsync -a --ignore-existing "$SRC_DIR"/ "$DEST_DIR"/
    echo "✅ Corpus loaded into $DEST_DIR"
  else
    echo "⚠️  No saved corpus found at $SRC_DIR"
  fi


sync-corpus:
  #!/usr/bin/env bash
  set -euo pipefail

  SRC_DIR="./saved_corpus"
  SHM_DIR="/dev/shm/libfuzz_corpus"

  echo "🔄 Syncing corpus between $SRC_DIR ⇄ $SHM_DIR"
  mkdir -p "$SRC_DIR" "$SHM_DIR"

  if [[ -z "$(ls -A "$SRC_DIR" 2>/dev/null || true)" && -z "$(ls -A "$SHM_DIR" 2>/dev/null || true)" ]]; then
    echo "⚠️  Both corpora are empty — nothing to sync."
    exit 0
  fi

  echo "⬆️  Copying new files from in-memory corpus → disk..."
  rsync -a --ignore-existing "$SHM_DIR"/ "$SRC_DIR"/

  echo "⬇️  Copying new files from disk corpus → in-memory..."
  rsync -a --ignore-existing "$SRC_DIR"/ "$SHM_DIR"/

  echo "✅ Sync complete! Both corpora are up to date."


auto-sync-corpus:
  #!/usr/bin/env bash
  set -euo pipefail

  INTERVAL="${INTERVAL:-600}"  # default every 10 min
  echo "⏱️  Auto corpus sync running every $INTERVAL seconds..."
  while true; do
    just sync-corpus || true
    sleep "$INTERVAL"
  done


# --- Fuzzing workflow --------------------------------------------------

fuzz-all:
  #!/usr/bin/env bash
  set -euo pipefail

  echo "♻️  Preparing fuzzing session..."
  just load-corpus

  echo "⏱️  Starting background corpus sync (every 10 minutes)..."
  ( INTERVAL=600 just auto-sync-corpus & disown )

  CORES=$(nproc)
  CORPUS_DIR="/dev/shm/libfuzz_corpus"
  MERGE_FILE="/dev/shm/merge.state"

  echo "🔥 Running fuzz harness on all $CORES cores"

  # Ensure build exists
  if [[ ! -x ./build/lpm-consumer-fuzz ]]; then
    echo "⚙️  Build not found — rebuilding..."
    just rebuild
  fi

  # Ensure corpus directories exist
  mkdir -p "$CORPUS_DIR" ./seeds

  echo "🧠 Using in-memory corpus at $CORPUS_DIR"
  echo "💾 Merge control file: $MERGE_FILE"

  # Avoid duplicate fuzzers if rerun
  if pgrep -f lpm-consumer-fuzz >/dev/null 2>&1; then
    echo "⚠️  Fuzzers already running — aborting duplicate run."
    exit 0
  fi

  # ✅ Locate instrumented libs dynamically
  LIBMNL=$(pkg-config --variable=libdir libmnl)/libmnl.so.0
  LIBNFTNL=$(pkg-config --variable=libdir libnftnl)/libnftnl.so.11
  echo "📦 Using instrumented libs:"
  echo "   • libmnl → $LIBMNL"
  echo "   • libnftnl → $LIBNFTNL"

  # ✅ Ensure per-process coverage output
  export LLVM_PROFILE_FILE="/tmp/fuzz-%p.profraw"
  export LD_PRELOAD="$LIBMNL:$LIBNFTNL"

  # ✅ Launch fuzzers safely in parallel with coverage
  for i in $(seq 0 $((CORES - 1))); do
    LOG_FILE="fuzz-${i}.log"
    echo "🚀 Launching fuzzer core $i (log: $LOG_FILE)"
    ./build/lpm-consumer-fuzz \
      -close_fd_mask=3 \
      -use_value_profile=1 \
      -entropic=1 \
      -reload=1 \
      -merge_control_file="$MERGE_FILE" \
      -max_len=512 \
      -rss_limit_mb=4096 \
      -artifact_prefix="${CORPUS_DIR}/" \
      -print_final_stats=1 \
      "$CORPUS_DIR" \
      >"$LOG_FILE" 2>&1 &
  done

  echo "✅ All fuzzers launched. Logs: fuzz-*.log"
  echo "📈 Prometheus metrics should now include real coverage percentages."


# --- Fuzzing control ---------------------------------------------------

kill-fuzz:
  #!/usr/bin/env bash
  set -euo pipefail

  echo "🛑 Stopping all running fuzzers and sync daemons..."

  # Kill any active fuzzing processes
  if pgrep -f "./build/lpm-consumer-fuzz" >/dev/null 2>&1; then
    echo "⚙️  Killing fuzz harness instances..."
    pgrep -f "./build/lpm-consumer-fuzz" | xargs -r kill -TERM
  fi

  # Kill any background corpus auto-sync daemons
  if pgrep -f "just auto-sync-corpus" >/dev/null 2>&1; then
    echo "⚙️  Killing auto-sync-corpus background daemons..."
    pgrep -f "just auto-sync-corpus" | xargs -r kill -TERM
  fi

  # Also catch raw bash auto-sync loops, if launched manually
  if pgrep -f "auto-sync-corpus" >/dev/null 2>&1; then
    echo "⚙️  Killing any lingering auto-sync-corpus loops..."
    pgrep -f "auto-sync-corpus" | xargs -r kill -TERM
  fi

  echo "⏳ Waiting for processes to exit..."
  sleep 2

  # Force-kill if anything still alive
  if pgrep -f "./build/lpm-consumer-fuzz\|auto-sync-corpus" >/dev/null 2>&1; then
    echo "⚠️  Some processes still running — forcing kill..."
    pgrep -f "./build/lpm-consumer-fuzz\|auto-sync-corpus" | xargs -r kill -9
  fi

  echo "✅ All fuzzers and sync daemons stopped."


# --- Coverage ----------------------------------------------------------

coverage:
  #!/usr/bin/env bash
  set -euo pipefail

  echo "📊 Collecting LLVM coverage data..."

  # Merge all per-process .profraw files into one .profdata
  if ls /tmp/fuzz-*.profraw >/dev/null 2>&1; then
    echo "🧮 Merging raw coverage files..."
    llvm-profdata merge -sparse /tmp/fuzz-*.profraw -o /tmp/merged.profdata
  else
    echo "⚠️ No .profraw files found in /tmp. Did the fuzzers run?"
    exit 1
  fi

  echo "✅ Merged profile written to /tmp/merged.profdata"

  # Export summary-only JSON
  #echo "📦 Exporting coverage summary to cov.json"
  #llvm-cov export ./build/lpm-consumer-fuzz \
  #  -instr-profile=/tmp/merged.profdata \
  #  -object $(pkg-config --variable=libdir libnftnl)/libnftnl.so.11 \
  #  -object $(pkg-config --variable=libdir libmnl)/libmnl.so.0 \
  #  -summary-only > cov.json

  #echo "✅ Coverage summary written to cov.json"

  # Human-readable summary
  echo "📈 Printing top-level coverage report:"
  llvm-cov report ./build/lpm-consumer-fuzz \
    -instr-profile=/tmp/merged.profdata \
    -object $(pkg-config --variable=libdir libnftnl)/libnftnl.so.11 \
    -object $(pkg-config --variable=libdir libmnl)/libmnl.so.0
