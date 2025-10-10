import std/[macros, os, strutils]

macro importTestsWithPrefix(dir: static[string], prefix: static[string]) =
  result = newStmtList()
  for kind, path in walkDir(dir):
    if kind == pcFile and path.endsWith(".nim"):
      let fname = splitFile(path).name
      if fname == "test_all" or not fname.startsWith(prefix):
        continue
      result.add quote do:
        import `fname`

importTestsWithPrefix("tests", "integration_")
