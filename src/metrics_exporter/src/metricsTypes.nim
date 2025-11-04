# metricsTypes.nim
# Shared data structures for coverage and fuzzer metrics

type
  ## Branch-level coverage detail (LCOV BRDA)
  BranchCoverage* = object
    lineNumber*: int
    blockId*: int
    branchId*: int
    takenCount*: string

  ## Function-level hit information (LCOV FN/FNDA)
  FunctionCoverage* = object
    name*: string
    lineNumber*: int
    hitCount*: int

  ## Per-file LCOV coverage summary
  FileCoverage* = ref object
    filePath*: string
    functions*: seq[FunctionCoverage]
    branches*: seq[BranchCoverage]
    lineHits*: seq[tuple[lineNumber: int, hitCount: int]]
    totalBranches*: int
    coveredBranches*: int
    totalLines*: int
    coveredLines*: int

  ## Metrics extracted from a single fuzzer log line
  FuzzerMetrics* = object
    execPerSecond*: int
    rssMegabytes*: float
    corpusCount*: int
    coveragePercent*: int
    featuresFound*: int
    iterations*: int
