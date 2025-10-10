import std/[macros, os, strutils]
import os

when not defined(debugEcho): # skip during debugging
  # open /dev/null and redirect stdout
  let nullFile = open("/dev/null", fmWrite)
  setFilePos(nullFile, 0)
  stdout = nullFile

macro importAllTests(dir: static[string]) =
  ## Compile-time macro to import all test files under `dir`.
  result = newStmtList()
  for kind, path in walkDir(dir):
    if kind == pcFile and path.endsWith(".nim"):
      let fname = splitFile(path).name
      if fname == "test_all":
        continue
      result.add quote do:
        import `fname`

# Run the macro at compile time to import everything
importAllTests("tests")

# Now import unittest2 after modules are loaded
import unittest2 as unittest
