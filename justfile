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

# Run all tests (flat layout: tests/*.nim)
test-all:
  #!/usr/bin/env bash
  nim r tests/test_all.nim

# Run a specific test file
test FILE:
  #!/usr/bin/env bash
  echo "🔹 Running {{FILE}}"
  nim r -d:unittest2 "{{FILE}}"

# Run only core_* tests
test-core:
  #!/usr/bin/env bash
  set -e
  for f in tests/core_*.nim; do
    echo ""
    echo "🔹 Running $f"
    nim r -d:unittest2 "$f"
  done

# Run only integration_* tests
test-integration:
  #!/usr/bin/env bash
  set -e
  for f in tests/integration_*.nim; do
    echo ""
    echo "🔹 Running $f"
    nim r -d:unittest2 "$f"
  done


# --- Benchmarks --------------------------------------------------------

bench:
  #!/usr/bin/env bash
  set -e
  for f in tests/bench_*.nim; do
    echo ""
    echo "🏎  Running benchmark $f"
    nim c -r "$f"
  done
