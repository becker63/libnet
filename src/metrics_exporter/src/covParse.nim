import osproc, strutils, strscans
import ./metricsTypes
export metricsTypes

proc runCoverage*(): string =
  let output = execProcess("coverage-report", options = {poUsePath})
  let lines = output.splitLines()
  for i in countdown(lines.len - 1, 0):
    let s = lines[i].strip()
    if s.len > 0:
      return s
  raise newException(IOError, "coverage-report produced no usable path")

proc parseLcov*(path: string): seq[FileCoverage] =
  var files: seq[FileCoverage] = @[]
  var current: FileCoverage
  let text = readFile(path)

  for line in text.splitLines():
    var ok: bool

    # --- New file start ---
    var filepath: string
    ok = scanf(line, "SF:$+", filepath)
    if ok:
      current = FileCoverage(
        filePath: filepath,
        functions: @[],
        branches: @[],
        lineHits: @[],
        totalBranches: 0,
        coveredBranches: 0,
        totalLines: 0,
        coveredLines: 0,
      )
      files.add current
      continue

    # --- Function Declaration ---
    var fnLine: int
    var fnName: string
    ok = scanf(line, "FN:$i,$+", fnLine, fnName)
    if ok:
      current.functions.add FunctionCoverage(
        name: fnName, lineNumber: fnLine, hitCount: 0
      )
      continue

    # --- Function Hits ---
    var hits: int
    var hitName: string
    ok = scanf(line, "FNDA:$i,$+", hits, hitName)
    if ok:
      for f in current.functions.mitems:
        if f.name == hitName:
          f.hitCount = hits
      continue

    # --- Line Hit ---
    var ln, h: int
    ok = scanf(line, "DA:$i,$i", ln, h)
    if ok:
      current.lineHits.add((lineNumber: ln, hitCount: h))
      continue

    # --- Branch Data ---
    var bl, b: int
    var taken: string
    ok = scanf(line, "BRDA:$i,$i,$i,$+", ln, bl, b, taken)
    if ok:
      current.branches.add BranchCoverage(
        lineNumber: ln, blockId: bl, branchId: b, takenCount: taken
      )
      continue

    # --- Branch / Line Summary ---
    ok = scanf(line, "BRF:$i", current.totalBranches)
    if ok:
      continue

    ok = scanf(line, "BRH:$i", current.coveredBranches)
    if ok:
      continue

    ok = scanf(line, "LF:$i", current.totalLines)
    if ok:
      continue

    ok = scanf(line, "LH:$i", current.coveredLines)
    if ok:
      continue

  return files
