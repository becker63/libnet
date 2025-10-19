# --- Code generation ---------------------------------------------------

gen-nftnl:
    nim r -d:useFuthark -d:nodeclguards -d:futharkRebuild src/nftnl/generator.nim

gen-linux:
    nim r -d:useFuthark -d:nodeclguards -d:futharkRebuild src/linux/generator.nim

gen-mnl:
    nim r -d:useFuthark -d:nodeclguards -d:futharkRebuild src/mnl/generator.nim

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


# Build and load Prometheus + Grafana images directly into Podman

metrics-build:
    echo "🚀 Building and loading Prometheus + Grafana into Podman..."
    nix run .#prometheus-container.copyToPodman
    nix run .#grafana-container.copyToPodman
    echo "✅ Images loaded into Podman as:"
    podman images | grep -E "prometheus|grafana" || true


# Rebuild + restart everything cleanly
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
