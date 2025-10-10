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

# Run all tests (flat layout)
test-all:
  #!/usr/bin/env bash
  nim r tests/test_all.nim

# Run only core tests
test-core:
  #!/usr/bin/env bash
  nim r tests/test_core.nim

# Run only integration tests
test-integration:
  #!/usr/bin/env bash
  nim r tests/test_integration.nim

# Run a single test manually (still useful)
test FILE:
  #!/usr/bin/env bash
  echo "🔹 Running {{FILE}}"
  nim r -d:unittest2 "{{FILE}}"


# --- Benchmarks --------------------------------------------------------

bench:
  #!/usr/bin/env bash
  nim c -r tests/bench.nim
