# nix/lib/runtime-shared.nix
{
  inputs,
  cell,
  shellEnvHookFunc,
}:

let
  pkgs = inputs.nixpkgs;

  # How many fuzzers to run, and which ports Prometheus expects
  fuzzCount = 64;
  fuzzPortBase = 8080;

  # Full "host:port" targets Prometheus will scrape
  fuzzPorts = builtins.genList (i: "localhost:${toString (fuzzPortBase + i)}") fuzzCount;

  # VM/containers shared filesystem layout
  corpusDir = "/var/lib/libnet-fuzz/corpus";
  logsDir = "/var/lib/libnet-fuzz/logs";
  mergeFile = "/var/lib/libnet-fuzz/merge.state";

  # Coverage aggregation
  profrawDir = "/var/lib/libnet-fuzz/profraw";
  profdataFile = "/var/lib/libnet-fuzz/coverage.profdata";

  # Metrics exporter output – Prometheus will scrape this (via your exporter)
  metricsDir = "/var/lib/libnet-fuzz/metrics";
  metricsFile = "${metricsDir}/prometheus.prom";

  # Fuzzer binary name (keeps DRY across scripts and systemd)
  fuzzerBinary = "lpm-consumer-fuzz";

  # Handy strings for env consumption
  portsCsv = builtins.concatStringsSep "," (
    builtins.genList (i: toString (fuzzPortBase + i)) fuzzCount
  );

  # ----- Env & shellHook (match fuzzerEnv shape) -------------------------
  env = [
    # Ports & counts
    {
      name = "LIBNET_FUZZ_COUNT";
      value = toString fuzzCount;
    }
    {
      name = "LIBNET_FUZZ_PORT_BASE";
      value = toString fuzzPortBase;
    }
    {
      name = "LIBNET_FUZZ_PORTS_CSV";
      value = portsCsv;
    }

    # Paths used by VM and containers
    {
      name = "LIBNET_FUZZ_CORPUS_DIR";
      value = corpusDir;
    }
    {
      name = "LIBNET_FUZZ_LOGS_DIR";
      value = logsDir;
    }
    {
      name = "LIBNET_FUZZ_MERGE_FILE";
      value = mergeFile;
    }
    {
      name = "LIBNET_FUZZ_PROFRAW_DIR";
      value = profrawDir;
    }
    {
      name = "LIBNET_FUZZ_PROFDATA";
      value = profdataFile;
    }
    {
      name = "LIBNET_FUZZ_METRICS_DIR";
      value = metricsDir;
    }
    {
      name = "LIBNET_FUZZ_METRICS_FILE";
      value = metricsFile;
    }

    # Binary name (lets scripts stay generic)
    {
      name = "LIBNET_FUZZ_BIN";
      value = fuzzerBinary;
    }
  ];

  shellEnvHook = shellEnvHookFunc env;

in
{
  # keep existing attrs you reference elsewhere
  inherit
    fuzzCount
    fuzzPortBase
    fuzzPorts
    corpusDir
    logsDir
    mergeFile
    profrawDir
    profdataFile
    metricsDir
    metricsFile
    fuzzerBinary
    env
    shellEnvHook
    ;

  # Prometheus config tied to the shared values above
  prometheusConfig = pkgs.writeTextDir "etc/prometheus/prometheus.yml" ''
    global:
      scrape_interval: 500ms
      evaluation_interval: 500ms

    scrape_configs:
      # ✅ Metrics come only from the exporter
      - job_name: "metrics-exporter"
        static_configs:
          - targets: ["metrics-exporter:9677"]
  '';

}
