{
  description = "Example C++ + Nim fuzzing project using libprotobuf-mutator";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    libprotobuf-mutator.url = "github:becker63/libprotobuf-mutator";
    flake-utils.url = "github:numtide/flake-utils";
    nix2container.url = "github:nlewo/nix2container";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      libprotobuf-mutator,
      nix2container,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
        lpm = libprotobuf-mutator.packages.${system}.default;
        llvm = pkgs.llvmPackages_latest;
        n2c = nix2container.packages.${system}.nix2container;

        # --- include your existing Grafana JSON dashboard file ---
        grafanaDashboard = pkgs.runCommand "grafana-dashboard" { src = ./grafana-dashboard.json; } ''
          mkdir -p $out/etc/grafana/dashboards
          cp $src $out/etc/grafana/dashboards/libfuzzer.json
        '';

        # --- provisioning so Grafana loads the dashboard automatically ---
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

        # --- provisioning data source so Grafana can talk to Prometheus ---
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

        # --- dynamically generate Prometheus targets for ports 8080–8143 ---
        fuzzPorts = builtins.genList (i: "localhost:${toString (8080 + i)}") 64;

        prometheusConfig = pkgs.writeTextDir "etc/prometheus/prometheus.yml" ''
          global:
            scrape_interval: 500ms
            evaluation_interval: 500ms

          scrape_configs:
            - job_name: "lpm-consumer"
              static_configs:
                - targets: ${builtins.toJSON fuzzPorts}
              relabel_configs:
                - source_labels: [__address__]
                  regex: '.*:(80[0-9]+)'
                  target_label: core
                  replacement: '$1'
        '';

        common = {
          nativeBuildInputs = with pkgs; [
            cmake
            ninja
            pkg-config
            protols
            clang-tools
          ];

          buildInputs = with pkgs; [
            nim
            nimble
            nimlsp
            nph
            clang
            just
            perf
            inferno
            protobuf
            protols
            lpm
            abseil-cpp
            gtest
            zlib
            prometheus-cpp
            grafana
            prometheus
            libnfnetlink
            libnetfilter_queue
            libmnl
            libnftnl
            libnetfilter_conntrack
            llvm.libcxx
            llvm.libcxx.dev
            llvm.lld
            llvm.libunwind
          ];

          shellHook = ''
            export CC=${llvm.clang}/bin/clang
            export CXX=${llvm.clang}/bin/clang++
            export LD=lld
            export PATH=$HOME/.nimble/bin:$PATH
            export NIM_LSP=${pkgs.nimlsp}/bin/nimlsp
            unset CPATH CPLUS_INCLUDE_PATH LIBRARY_PATH
            echo "🔧 LLVM + libc++ + lld + Nim + libprotobuf-mutator environment ready"
          '';
        };
      in
      {
        packages.default = llvm.stdenv.mkDerivation {
          pname = "lpm-consumer";
          version = "0.1.0";
          src = ./.;
          inherit (common) nativeBuildInputs buildInputs;

          cmakeFlags = [
            "-DCMAKE_BUILD_TYPE=Debug"
            "-DCMAKE_PREFIX_PATH=${lpm}/lib/cmake:${pkgs.protobuf}/lib/cmake"
          ];

          installPhase = ''
            mkdir -p $out/bin
            cp lpm-consumer-fuzz $out/bin/ || true
          '';
        };

        devShells.default = pkgs.mkShell.override { stdenv = llvm.stdenv; } common;

        # ------------------------------------------------------------------
        # Grafana Container (auto-load dashboard + Prometheus datasource)
        # ------------------------------------------------------------------
        packages.grafana-container = n2c.buildImage {
          name = "grafana";
          tag = "latest";
          config = {
            entrypoint = [
              "${pkgs.grafana}/bin/grafana"
              "server"
              "--homepath"
              "/share/grafana"
              "--config"
              "/etc/grafana/grafana.ini"
            ];
            ExposedPorts."3000/tcp" = { };
          };
          copyToRoot = pkgs.buildEnv {
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
          };
        };

        # ------------------------------------------------------------------
        # Prometheus Container
        # ------------------------------------------------------------------
        packages.prometheus-container = n2c.buildImage {
          name = "prometheus";
          tag = "latest";
          config = {
            entrypoint = [
              "${pkgs.prometheus}/bin/prometheus"
              "--config.file=/etc/prometheus/prometheus.yml"
              "--storage.tsdb.path=/prometheus-data"
            ];
            ExposedPorts."9090/tcp" = { };
          };
          copyToRoot = pkgs.buildEnv {
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
          };
        };
      }
    );
}
