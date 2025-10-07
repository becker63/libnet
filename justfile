# justfile

# Generate libnftnl bindings
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

# Run tests
test-all:
    nim r tests/all_tests.nim

test-snprintf:
    nim r tests/snprintf.nim

test-build_payload:
    nim r tests/build_payload.nim

clean:
    find . -type f -exec sh -c 'file -b "$1" | grep -q ELF && rm "$1"' _ {} \;
