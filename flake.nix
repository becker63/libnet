{
  description = "Example C++ + Nim fuzzing project using libprotobuf-mutator (with coverage runtime overlay)";

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
        # ────────────────────────────────────────────────
        # 🧩 Overlay: enable compiler-rt profile runtime
        # ────────────────────────────────────────────────
        overlays = [
          (final: prev: {
            llvmPackages_21 = prev.llvmPackages_21 // {
              compiler-rt = prev.llvmPackages_21.compiler-rt.overrideAttrs (old: {
                pname = "${old.pname}-with-profile";
                cmakeFlags = old.cmakeFlags ++ [
                  (final.lib.cmakeBool "COMPILER_RT_BUILD_PROFILE" true)
                ];
              });
            };
          })
        ];

        pkgs = import nixpkgs { inherit system overlays; };
        llvm = pkgs.llvmPackages_21;
        n2c = nix2container.packages.${system}.nix2container;
        lpm = libprotobuf-mutator.packages.${system}.default;

        # ────────────────────────────────────────────────
        # 🧩 Local instrumented libraries
        # ────────────────────────────────────────────────
        libmnl-cov = pkgs.callPackage ./libmnl-cov.nix {
          llvmPackages_21 = pkgs.llvmPackages_21;
        };

        libnftnl-cov = pkgs.callPackage ./libnftnl-cov.nix {
          llvmPackages_21 = pkgs.llvmPackages_21;
          libmnl-cov = libmnl-cov;
        };

        # ────────────────────────────────────────────────
        # 📊 Grafana + Prometheus setup
        # ────────────────────────────────────────────────
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

        # ────────────────────────────────────────────────
        # Shared build inputs
        # ────────────────────────────────────────────────
        common = {
          nativeBuildInputs = with pkgs; [
            cmake
            ninja
            pkg-config
            protobuf
            llvm.clang-tools
          ];

          buildInputs = with pkgs; [
            nim
            nimble
            nimlsp
            nph
            just
            perf
            inferno
            protobuf
            lpm
            abseil-cpp
            gtest
            zlib
            prometheus-cpp
            grafana
            prometheus
            libnfnetlink
            libnetfilter_queue
            libmnl-cov
            libnftnl-cov
            libnetfilter_conntrack
            llvm.libcxx
            llvm.libunwind
            llvm.compiler-rt
            llvm.lld
            nlohmann_json
          ];

          shellHook = ''
            export PATH=${llvm.clang-tools}/bin:${llvm.clang}/bin:${llvm.llvm}/bin:$PATH
            export CC=${llvm.clang}/bin/clang
            export CXX=${llvm.clang}/bin/clang++
            export LD=${llvm.lld}/bin/ld.lld
            export LLVM_PROFILE_FILE="/tmp/fuzz-%p.profraw"
            export LLVM_DIR="${llvm.llvm.dev}/lib/cmake/llvm"
            unset CPATH CPLUS_INCLUDE_PATH LIBRARY_PATH

            # ────────────────────────────────────────────────
            # 🔹 Robust coverage runtime detection
            # ────────────────────────────────────────────────
            CLANG_RT_ROOT="${llvm.compiler-rt}/lib"
            CLANG_RT_PROFILE_PATH=$(find "$CLANG_RT_ROOT" -type f -path "*/libclang_rt.profile*.so" 2>/dev/null | head -n1)

            if [ -n "$CLANG_RT_PROFILE_PATH" ]; then
              export CLANG_RT_PROFILE_PATH
              echo "[llvm] ✅ Found coverage runtime at: $CLANG_RT_PROFILE_PATH"
            else
              echo "[llvm] ⚠️  libclang_rt.profile not found under $CLANG_RT_ROOT"
              echo "[llvm] 🔍 Available libraries:"
              find "$CLANG_RT_ROOT" -maxdepth 2 -type f | head -n10
            fi
          '';
cl
        };
      in
      {
        # ────────────────────────────────────────────────
        # Packages exposed by this flake
        # ────────────────────────────────────────────────
        packages = {
          default = llvm.stdenv.mkDerivation {
            pname = "lpm-consumer";
            version = "0.1.0";
            src = ./.;
            inherit (common) nativeBuildInputs buildInputs;

            cmakeFlags = [
              "-DCMAKE_BUILD_TYPE=Debug"
              "-DCMAKE_PREFIX_PATH=${lpm}/lib/cmake:${pkgs.protobuf}/lib/cmake:${pkgs.llvmPackages_21.llvm.dev}/lib/cmake/llvm"
            ];

            installPhase = ''
              mkdir -p $out/bin
              cp lpm-consumer-fuzz $out/bin/ || true
            '';
          };

          libmnl-cov = libmnl-cov;
          libnftnl-cov = libnftnl-cov;

          grafana-container = n2c.buildImage {
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

          prometheus-container = n2c.buildImage {
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
        };

        # ────────────────────────────────────────────────
        # Dev shell with coverage runtime support
        # ────────────────────────────────────────────────
        devShells.default = pkgs.mkShell.override { stdenv = llvm.stdenv; } common;
      }
    );
}
