# justfile

# Generate libnetfilter_queue bindings
gen-nfq:
    nim r -d:useFuthark -d:nodeclguards src/nfq/generator.nim

# Generate libnftnl bindings
gen-nftnl:
    nim r -d:useFuthark -d:nodeclguards src/nftnl/generator.nim

# Generate libnetfilter_conntrack bindings
gen-conntrack:
    nim r -d:useFuthark -d:nodeclguards src/conntrack/generator.nim

# Run all generators
generate:
    just gen-nfq
    just gen-nftnl
    just gen-conntrack

# Run tests
test-all:
    nim r tests/all_tests.nim

clean:
    find . -type f -exec sh -c 'file -b "$1" | grep -q ELF && rm "$1"' _ {} \;
