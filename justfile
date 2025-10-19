# --- Code generation ---------------------------------------------------

gen-nftnl:
    nim r -d:useFuthark -d:nodeclguards -d:futharkRebuild src/nftnl/generator.nim

gen-linux:
    nim r -d:useFuthark -d:nodeclguards -d:futharkRebuild src/linux/generator.nim

gen-mnl:
    nim r -d:useFuthark -d:nodeclguards -d:futharkRebuild src/mnl/generator.nim

# Run all generators
gen:
    just gen-linux
    just gen-nftnl
    just gen-mnl


# --- Testing -----------------------------------------------------------

# Useful for when test-all or something doesnt register new files/changes
rmcache:
    rm -rf ~/.cache/nim

# Run all tests (flat layout)
test-all:
    nim r tests/test_all.nim

# Run only core tests
test-core:
    nim r tests/test_core.nim

# Run only integration tests
test-integration:
    nim r tests/test_integration.nim

# Run a single test manually (still useful)
test FILE:
    echo "🔹 Running {{FILE}}"
    nim r "{{FILE}}"


# --- Benchmarks --------------------------------------------------------

bench:
  nim c -r tests/bench.nim

rebuild:
    rm -rf build
    cmake -B build -S .
    cmake --build build
