########################################
# readers.nim
########################################

import os, strutils, tables, times, posix
import metrics
import json
import ./covParse
import ./metricsTypes
import ./lineParse
import chronos

########################################
# Coverage metrics
########################################

declareGauge totalCoveragePct, "Overall code coverage in percent"
declareGauge totalLinesFound, "Total instrumented lines"
declareGauge totalLinesHit, "Total lines actually executed"
declareGauge fileCoveragePct, "Coverage % per file", ["file"]
declareGauge coverageLastUpdate, "Unix timestamp of last coverage metrics refresh"

proc updateCoverageMetrics*() =
  let path = runCoverage()
  let files = parseLcov(path)

  var totalLines = 0
  var totalCovered = 0

  for f in files:
    totalLines.inc(f.totalLines)
    totalCovered.inc(f.coveredLines)

    if f.totalLines > 0:
      let pct = (f.coveredLines * 100) div f.totalLines
      fileCoveragePct.set(pct.float64, @[f.filePath])
    else:
      fileCoveragePct.set(0.0, @[f.filePath])

  if totalLines > 0:
    let pct = (totalCovered * 100) div totalLines
    totalCoveragePct.set(pct.float64)
  else:
    totalCoveragePct.set(0.0)

  totalLinesFound.set(totalLines.float64)
  totalLinesHit.set(totalCovered.float64)
  coverageLastUpdate.set(epochTime())

########################################
# Fuzzer log metrics
########################################

declareGauge fuzzExecsPerSecond, "Fuzzer execs per second", ["fuzzer"]
declareGauge fuzzRssMegabytes, "Fuzzer RSS memory (MB)", ["fuzzer"]
declareGauge fuzzCorpusSize, "Fuzzer corpus size", ["fuzzer"]
declareGauge fuzzCoveragePct, "Fuzzer coverage (cov)", ["fuzzer"]
declareGauge fuzzFeatureCount, "Fuzzer features", ["fuzzer"]
declareCounter fuzzIterationsTotal, "Fuzzer total iterations", ["fuzzer"]

const
  BufSize = 4096
  TailWindow = 8 * 1024
  IdleBackoff = 200

########################################
# GC-safe local line processor
########################################

proc processFuzzLine(
    path, lbl, line: string, lastIter: var int
) {.gcsafe, raises: [].} =
  if line.len == 0 or line[0] != '#':
    return
  if not line.contains("exec/s:"):
    return

  echo "[parse] ", lbl, ": ", line # ✅ DEBUG PRINT

  var m: FuzzerMetrics

  try:
    m = parseFuzzLogLine(line)
    echo "[parsed] ", %*m # ✅ Pretty JSON-ish
  except ValueError:
    echo "[parse-error] could not parse line: ", line
    return

  if m.execPerSecond > 0:
    fuzzExecsPerSecond.set(m.execPerSecond.float64, @[lbl])
  if m.rssMegabytes > 0:
    fuzzRssMegabytes.set(m.rssMegabytes, @[lbl])
  if m.corpusCount > 0:
    fuzzCorpusSize.set(m.corpusCount.float64, @[lbl])
  if m.coveragePercent > 0:
    fuzzCoveragePct.set(m.coveragePercent.float64, @[lbl])
  if m.featuresFound > 0:
    fuzzFeatureCount.set(m.featuresFound.float64, @[lbl])

  if m.iterations > 0:
    let delta = m.iterations - lastIter
    if delta > 0:
      fuzzIterationsTotal.inc(delta.float64, @[lbl])
    lastIter = m.iterations

########################################
# Async log streamer
########################################

proc streamLogFile(path: string) {.async, gcsafe.} =
  var f: File
  if not open(f, path, fmRead):
    return
  defer:
    f.close()

  try:
    # Just stat calls, doesnt read whole file
    let sz = getFileSize(path)
    let start =
      if sz > TailWindow:
        sz - TailWindow
      else:
        0
    if start > 0:
      # The magic, skip to head of file and read only that
      discard lseek(getFileHandle(f), start, SEEK_SET)
  except CatchableError:
    discard

  var partial = ""
  let lbl = extractFilename(path)
  var buf = newString(BufSize)
  var lastIter = 0

  while true:
    let n = f.readBuffer(addr buf[0], BufSize)
    if n <= 0:
      await sleepAsync(IdleBackoff)
      continue

    let chunk = partial & buf[0 ..< n]
    var lines = chunk.splitLines()

    if not chunk.endsWith("\n"):
      partial = lines.pop()
    else:
      partial = ""

    for ln in lines:
      let s = ln.strip()
      if s.len > 0:
        processFuzzLine(path, lbl, s, lastIter)
        await sleepAsync(0)

########################################
# Async watcher spawner (static GC-safe state)
########################################

proc fuzzerWatcherLoop() {.async, gcsafe.} =
  var watchers = initTable[string, bool]()

  while true:
    for path in walkFiles("/tmp/fuzz*.log"):
      if not watchers.getOrDefault(path, false):
        watchers[path] = true
        echo "[watch] starting log watcher for ", path # ✅ DEBUG
        asyncSpawn streamLogFile(path)

    await sleepAsync(500)

########################################
# Called by main
########################################

proc startMetricsLoops*() {.async.} =
  asyncSpawn fuzzerWatcherLoop()

  while true:
    updateCoverageMetrics()
    await sleepAsync(500)
