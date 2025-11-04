# Package

version       = "0.1.0"
author        = "becker63"
description   = "A new awesome nimble package"
license       = "MIT"
srcDir        = "src"
bin           = @["metrics_exporter"]


# Dependencies

requires "nim >= 2.2.4"
requires "https://github.com/status-im/nim-metrics"
