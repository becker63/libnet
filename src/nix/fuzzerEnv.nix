{ inputs, cell }:

let

  # import nixpkgs normally (no overlays)
  pkgs = inputs.nixpkgs;

  # choose your LLVM; nixos-unstable has 21 today
  llvm = pkgs.llvmPackages_21;

  # your flake package
  lpm = inputs.libprotobuf-mutator.packages.default;

  host = pkgs.stdenv.hostPlatform.parsed.cpu.name;

  # ── coverage-instrumented libs ──────────────────────────────────────────
  libmnlCovDrv = llvm.stdenv.mkDerivation rec {
    pname = "libmnl-cov";
    version = "1.0.5";
    src = pkgs.fetchurl {
      url = "https://netfilter.org/projects/libmnl/files/libmnl-${version}.tar.bz2";
      sha256 = "09851ns07399rbz0y8slrlmnw3fn1nakr8d37pxjn5gkks8rnjr7";
    };
    nativeBuildInputs = [
      pkgs.pkg-config
      llvm.clang
      llvm.lld
    ];
    buildInputs = [
      llvm.libcxx
      llvm.compiler-rt
      pkgs.zlib
    ];
    CC = "${llvm.clang}/bin/clang";
    CXX = "${llvm.clang}/bin/clang++";
    AR = "${llvm.llvm}/bin/llvm-ar";
    RANLIB = "${llvm.llvm}/bin/llvm-ranlib";
    LD = "${llvm.lld}/bin/ld.lld";
    CFLAGS = "-O0 -g -fprofile-instr-generate -fcoverage-mapping --rtlib=compiler-rt -resource-dir=${llvm.clang}/resource-root -isystem ${pkgs.stdenv.cc.libc}/include";
    LDFLAGS = "-fuse-ld=lld -fprofile-instr-generate -fcoverage-mapping -rtlib=compiler-rt -L${pkgs.stdenv.cc.libc}/lib -Wl,-rpath,${pkgs.stdenv.cc.libc}/lib";
    dontStrip = true;
    dontSeparateDebugInfo = true;
    doCheck = false;
  };

  libnftnlCovDrv = llvm.stdenv.mkDerivation rec {
    pname = "libnftnl-cov";
    version = "1.3.0";
    src = pkgs.fetchurl {
      url = "https://netfilter.org/projects/libnftnl/files/libnftnl-${version}.tar.xz";
      sha256 = "sha256-D0vkeou4t3o1DuWMvUtfrmJgrUhqUncGqxXP4d1Vo8Q=";
    };
    nativeBuildInputs = [
      pkgs.pkg-config
      llvm.clang
      llvm.lld
    ];
    buildInputs = [
      libmnlCovDrv
      llvm.libcxx
      llvm.compiler-rt
      pkgs.zlib
    ];
    CC = "${llvm.clang}/bin/clang";
    CXX = "${llvm.clang}/bin/clang++";
    AR = "${llvm.llvm}/bin/llvm-ar";
    RANLIB = "${llvm.llvm}/bin/llvm-ranlib";
    LD = "${llvm.lld}/bin/ld.lld";
    CFLAGS = "-O0 -g -fprofile-instr-generate -fcoverage-mapping --rtlib=compiler-rt -resource-dir=${llvm.clang}/resource-root -isystem ${pkgs.stdenv.cc.libc}/include";
    LDFLAGS = "-fuse-ld=lld -fprofile-instr-generate -fcoverage-mapping -rtlib=compiler-rt -L${pkgs.stdenv.cc.libc}/lib -Wl,-rpath,${pkgs.stdenv.cc.libc}/lib";
    dontStrip = true;
    dontSeparateDebugInfo = true;
    doCheck = false;
  };

in
{
  toolchain = rec {

    asanRt = "${llvm.compiler-rt}/lib/linux/libclang_rt.asan-${host}.so";

    profileRt = "${llvm.compiler-rt}/lib/linux/libclang_rt.profile-${host}.a";

    rpathFlags = [
      "-Wl,-rpath,${llvm.libcxx}/lib"
      "-Wl,-rpath,${llvm.compiler-rt}/lib/linux"
      "-Wl,-rpath,${libmnlCovDrv}/lib"
      "-Wl,-rpath,${libnftnlCovDrv}/lib"
      "-Wl,-rpath,${lpm}/lib"
      "-Wl,--enable-new-dtags"
    ];

    stdenv = llvm.libcxxStdenv;

    # expose for consumers
    libmnlCov = libmnlCovDrv;
    libnftnlCov = libnftnlCovDrv;
    lpmPkg = lpm;

    nativeBuildInputs = [
      pkgs.cmake
      pkgs.ninja
      pkgs.pkg-config
      pkgs.protobuf
      lpm
      llvm.clang
      llvm.lld
      llvm.compiler-rt
      pkgs.nim
      pkgs.nim_builder
      pkgs.patchelf
      pkgs.llvm
    ];

    buildInputs = [
      pkgs.protobuf
      lpm
      libmnlCov
      libnftnlCov
      pkgs.zlib
      pkgs.abseil-cpp
      pkgs.libunwind
      llvm.libcxx
    ];

    env = [
      {
        name = "CC";
        value = "${llvm.clang}/bin/clang";
      }
      {
        name = "CXX";
        value = "${llvm.clang}/bin/clang++";
      }
      {
        name = "LD";
        value = "${llvm.lld}/bin/ld.lld";
      }
      {
        name = "PROFILE_RT";
        value = profileRt;
      }
      {
        name = "LLVM_PROFILE_FILE";
        value = "/var/lib/libnet-fuzz/fuzz-%p.profraw";
      }
      {
        name = "COV";
        value = "${llvm.llvm}/bin/llvm-cov";
      }
      {
        name = "PROF";
        value = "${llvm.llvm}/bin/llvm-profdata";
      }

      # make pkg-config see protobuf + LPM + our cov libs
      {
        name = "PKG_CONFIG_PATH";
        eval = "${lpm}/lib/pkgconfig:${libnftnlCovDrv}/lib/pkgconfig:${libmnlCovDrv}/lib/pkgconfig:\${PKG_CONFIG_PATH:-}";
      }
    ];

    shellEnvHook = builtins.concatStringsSep "\n" (
      map (e: if e ? eval then ''export ${e.name}=${e.eval}'' else ''export ${e.name}=${e.value}'') env
    );
  };
}
