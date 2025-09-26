# Package

version       = "0.1.0"
author        = "Anonymous"
description   = "A new awesome nimble package"
license       = "MIT"
srcDir        = "src"


# Dependencies

requires "nim >= 2.2.4"
requires "futhark >= 0.15.0"
requires "https://github.com/PMunch/macroutils"
requires "https://github.com/status-im/nim-unittest2"

# --- Custom generator tasks ---

task genNfq, "generate libnetfilter_queue bindings":
  exec "nim c -d:useFuthark -d:nodeclguards src/nfq/generator.nim"

task genNftnl, "generate libnftnl bindings":
  exec "nim c -d:useFuthark -d:nodeclguards src/nftnl/generator.nim"

task genConntrack, "generate libnetfilter_conntrack bindings":
  exec "nim c -d:useFuthark -d:nodeclguards src/conntrack/generator.nim"

# --- Aggregate task ---

task generate, "generate all bindings":
  exec "nimble genNfq"
  exec "nimble genNftnl"
  exec "nimble genConntrack"

task test, "Run all tests":
  exec "nim c -r tests/all_tests.nim"
