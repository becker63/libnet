import std/[macros, os, strutils]

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

importAllTests("tests")
