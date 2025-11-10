import strutils, strscans
import ./metricsTypes
export metricsTypes

proc parseFuzzLogLine*(line: string): FuzzerMetrics =
  var m: FuzzerMetrics

  # ---- Crash detection ----
  if line.contains("ERROR:"):
    m.crashed = true

    if line.contains("AddressSanitizer"):
      m.crashType = "ASAN"
    elif line.contains("UndefinedBehaviorSanitizer"):
      m.crashType = "UBSAN"
    elif line.contains("heap-buffer-overflow"):
      m.crashType = "HBO"
    elif line.contains("deadly signal"):
      m.crashType = "SIGNAL"
    else:
      m.crashType = "OTHER"

  # ---- Iteration count (#123456) ----
  if line.len > 1 and line[0] == '#':
    try:
      let num = line[1 ..< line.find({'\t', ' '})]
      m.iterations = parseInt(num)
    except:
      discard

  # ---- exec/s ----
  if line.contains("exec/s:"):
    let val = line.split("exec/s:")[1].splitWhitespace()[0]
    m.execPerSecond = parseInt(val)

  # ---- RSS (strip Mb/Mb) ----
  if line.contains("rss:"):
    var rss = line.split("rss:")[1].splitWhitespace()[0]
    rss = strip(rss, chars = {'M','B','m','b'})
    m.rssMegabytes = parseFloat(rss)

  # ---- corpus ----
  if line.contains("corp:"):
    let corp = line.split("corp:")[1].splitWhitespace()[0]
    let first = corp.split('/')[0]
    m.corpusCount = parseInt(first)

  # ---- optional coverage ----
  if line.contains("cov:"):
    let cov = line.split("cov:")[1].splitWhitespace()[0]
    m.coveragePercent = parseInt(cov)

  # ---- optional features ----
  if line.contains("features:"):
    let f = line.split("features:")[1].splitWhitespace()[0]
    m.featuresFound = parseInt(f)

  return m
