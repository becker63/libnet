import strutils, parseopt
import metrics
import metrics/chronos_httpserver
import chronos
import ./readers

proc main() =
  var host = "0.0.0.0"
  var port: Port = Port(8080)

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

  startMetricsHttpServer(host, port)
  asyncSpawn startMetricsLoops()
  runForever()

when isMainModule:
  main()
