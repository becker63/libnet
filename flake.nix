{
  description = "Example C++ + Nim fuzzing project using libprotobuf-mutator";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    libprotobuf-mutator.url = "github:becker63/libprotobuf-mutator";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      libprotobuf-mutator,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
        lpm = libprotobuf-mutator.packages.${system}.default;
        llvm = pkgs.llvmPackages_latest;

        common = {
          nativeBuildInputs = with pkgs; [
            cmake
            ninja
            pkg-config
            protols
            clang-tools
          ];

          buildInputs = with pkgs; [
            # Nim / tooling
            nim
            nimble
            nimlsp
            nph
            clang

            # protobuf + fuzz infra
            protobuf
            protols
            lpm
            abseil-cpp
            gtest
            zlib

            # netfilter libs for Nim harness
            libnfnetlink
            libnetfilter_queue
            libmnl
            libnftnl
            libnetfilter_conntrack

            # LLVM runtime bits
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
            xonsh
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
      }
    );
}
