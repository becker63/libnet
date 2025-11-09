{ inputs, cell }:
let
  pkgs = inputs.nixpkgs;
  mkOCI = inputs.std.lib.ops.mkOCI;
  system = pkgs.stdenv.hostPlatform.system;

  n2c = inputs.n2c.outputs.packages.${system}.nix2container;

  # --- Base Debian image (prebuilt) --------------------------------------
  debianDigests = {
    "x86_64-linux" = {
      digest = "sha256:f522a3167fb670cc4a4518fab6d8c4227fe4bc458f4c7294832383bf284d5e78";
      sha256 = pkgs.lib.fakeSha256; # don’t care on x86_64
    };
    "aarch64-linux" = {
      digest = "sha256:bb09e47e6f9d59d3871f22d2f80991dbb69bbcd037fa71df0b8da704cd9d7fa0";
      sha256 = "sha256-6dZ7wH0Fw6OLtrxDGAL90uMPVk5wAiO/L6cQh7PnR7Y=";
    };
  };

  debianPlat = debianDigests.${system};

  debian = n2c.pullImage {
    imageName = "library/debian";
    imageDigest = debianPlat.digest;
    sha256 = debianPlat.sha256;
  };

  # --- Shared runtime ABI ------------------------------------------------
  runtime = inputs.cells.nix.lib.runtimeShared;
  prometheusConfig = runtime.prometheusConfig;
  fuzzPorts = runtime.fuzzPorts;

  # --- Metrics exporter + coverage collectors ----------------------------
  insidePkgs = [
    inputs.cells.metrics_exporter.installables.default
    inputs.cells.metrics_exporter.installables.coverage-gen
    pkgs.bash
  ];

  # --- Grafana sidecar data ----------------------------------------------
  grafanaDashboard = pkgs.runCommand "grafana-dashboard" { src = ./grafana-dashboard.json; } ''
    mkdir -p $out/etc/grafana/dashboards
    cp $src $out/etc/grafana/dashboards/libfuzzer.json
  '';

  grafanaProvision = pkgs.writeTextDir "etc/grafana/provisioning/dashboards/default.yml" ''
    apiVersion: 1
    providers:
      - name: "libfuzzer"
        orgId: 1
        folder: ""
        type: "file"
        disableDeletion: false
        updateIntervalSeconds: 10
        options:
          path: "/etc/grafana/dashboards"
  '';

  grafanaDatasource = pkgs.writeTextDir "etc/grafana/provisioning/datasources/prometheus.yml" ''
    apiVersion: 1
    datasources:
      - name: "Prometheus"
        type: "prometheus"
        access: "proxy"
        url: "http://localhost:9090"
        isDefault: true
        uid: "prometheus"
        editable: false
  '';

  grafanaConfig = pkgs.writeTextDir "etc/grafana/grafana.ini" ''
    [paths]
    data = /var/lib/grafana
    logs = /var/log/grafana
    plugins = /var/lib/grafana/plugins
    provisioning = /etc/grafana/provisioning

    [server]
    http_port = 3000
    domain = localhost

    [live]
    enabled = true
  '';

  metricsExporter = inputs.cells.metrics_exporter.installables.default;

in
{
  # -----------------------------------------------------------
  # metrics-exporter container
  # -----------------------------------------------------------
  metrics-exporter = mkOCI {
    name = "metrics-exporter";
    entrypoint = metricsExporter;
    runtimeInputs = insidePkgs;

    options = {
      fromImage = debian;

      copyToRoot = [
        (pkgs.buildEnv {
          name = "root";
          paths = insidePkgs;
          pathsToLink = [ "/bin" ];
        })
      ];
    };

    config = {
      ExposedPorts."9677/tcp" = { };
    };
  };

  # -----------------------------------------------------------
  # grafana container
  # -----------------------------------------------------------
  grafana = mkOCI {
    name = "grafana";

    # actual binary in /bin
    entrypoint = pkgs.writeShellScriptBin "grafana-entrypoint" ''
      exec ${pkgs.grafana}/bin/grafana \
        server \
        --homepath /share/grafana \
        --config /etc/grafana/grafana.ini
    '';

    runtimeInputs = [
      pkgs.grafana
      pkgs.coreutils
    ];

    options = {
      fromImage = debian;

      copyToRoot = [
        (pkgs.buildEnv {
          name = "grafana-root";
          paths = [
            pkgs.grafana
            pkgs.coreutils
            grafanaConfig
            grafanaProvision
            grafanaDatasource
            grafanaDashboard
          ];
          pathsToLink = [
            "/bin"
            "/etc"
            "/share"
          ];
        })
      ];
    };

    config = {
      ExposedPorts."3000/tcp" = { };
    };
  };

  # -----------------------------------------------------------
  # prometheus container
  # -----------------------------------------------------------
  prometheus = mkOCI {
    name = "prometheus";

    entrypoint = pkgs.writeShellScriptBin "prometheus-entrypoint" ''
      mkdir -p /prometheus-data/queries
      chmod -R 777 /prometheus-data

      exec ${pkgs.prometheus}/bin/prometheus \
        --config.file=/etc/prometheus/prometheus.yml \
        --storage.tsdb.path=/prometheus-data \
        --log.level=info
    '';

    runtimeInputs = [
      pkgs.prometheus
      pkgs.coreutils
    ];

    options = {
      fromImage = debian;

      copyToRoot = [
        (pkgs.buildEnv {
          name = "prometheus-root";
          paths = [
            pkgs.prometheus
            pkgs.coreutils
            prometheusConfig
          ];
          pathsToLink = [
            "/bin"
            "/etc"
          ];
        })
      ];
    };

    config = {
      ExposedPorts."9090/tcp" = { };
      Volumes."/prometheus-data" = { };
    };
  };

}
