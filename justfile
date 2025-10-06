# justfile

# Generate libnftnl bindings
gen-nftnl:
    nim r -d:useFuthark -d:nodeclguards src/nftnl/generator.nim

gen-linux:
    nim r -d:useFuthark -d:nodeclguards src/linux/generator.nim

# Run all generators
gen:
    just gen-linux
    just gen-nftnl

# Run tests
test-all:
    nim r tests/all_tests.nim

clean:
    find . -type f -exec sh -c 'file -b "$1" | grep -q ELF && rm "$1"' _ {} \;
