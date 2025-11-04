import strutils, strscans
import ./metricsTypes
export metricsTypes

# Example log line:
# #524288	pulse  corp: 1/1b lim: 4096 exec/s: 131072 rss: 469Mb
#
proc parseFuzzLogLine*(line: string): FuzzerMetrics =
  ## Handles lines:
  ## #1048576 pulse corp: 1/1b lim: 4096 exec/s: 131072 rss: 479Mb

  var m: FuzzerMetrics
  # Extract exec/s
  if line.contains("exec/s:"):
    let val = line.split("exec/s:")[1].splitWhitespace()[0]
    m.execPerSecond = parseInt(val)

  # Extract rss (strip Mb suffix)
  if line.contains("rss:"):
    var rss = line.split("rss:")[1].splitWhitespace()[0]
    rss = strip(rss, chars = {'M', 'B', 'm', 'b'})
    m.rssMegabytes = parseFloat(rss)

  # Extract corpus count (first number of 1/1b)
  if line.contains("corp:"):
    let corp = line.split("corp:")[1].splitWhitespace()[0]
    let first = corp.split('/')[0]
    m.corpusCount = parseInt(first)

  # Optional: feature / coverage only if present
  if line.contains("cov:"):
    let cov = line.split("cov:")[1].splitWhitespace()[0]
    m.coveragePercent = parseInt(cov)

  if line.contains("features:"):
    let f = line.split("features:")[1].splitWhitespace()[0]
    m.featuresFound = parseInt(f)

  # Extract iteration count from "#NNNN"
  if line.len > 1 and line[0] == '#':
    try:
      let num = line[1 ..< line.find({'\t', ' '})]
      m.iterations = parseInt(num)
    except:
      discard

  return m
