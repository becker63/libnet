import strutils, parseopt
import metrics
import metrics/chronos_httpserver
import chronos
import readers

proc main() =
  var host = "0.0.0.0"
  var port: Port = Port(9677)

  var logDir = "/mounted/logs"
  var covDir = "/mounted/"

  for kind, key, val in getopt():
    if kind in {cmdLongOption, cmdShortOption}:
      case key
      of "host", "h":
        if val.len != 0: host = val
      of "port", "p":
        if val.len != 0: port = Port(parseInt(val))
      of "bind", "b":
        if val.len != 0 and ":" in val:
          let parts = val.split(":", 1)
          host = parts[0]
          port = Port(parseInt(parts[1]))
      of "log-dir", "l":
        if val.len != 0: logDir = val
      of "cov-dir", "c":
        if val.len != 0: covDir = val

  startMetricsHttpServer(host, port)

  # ✅ pass dirs directly
  asyncSpawn startMetricsLoops(logDir, covDir)

  runForever()

when isMainModule:
  main()
