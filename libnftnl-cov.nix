{
  fetchurl,
  pkg-config,
  llvmPackages_21,
  stdenv,
  libmnl-cov,
}:

llvmPackages_21.stdenv.mkDerivation rec {
  pname = "libnftnl-cov";
  version = "1.3.0";

  src = fetchurl {
    url = "https://netfilter.org/projects/libnftnl/files/libnftnl-${version}.tar.xz";
    sha256 = "sha256-D0vkeou4t3o1DuWMvUtfrmJgrUhqUncGqxXP4d1Vo8Q=";
  };

  nativeBuildInputs = [
    pkg-config
    llvmPackages_21.clang
    llvmPackages_21.lld
  ];

  buildInputs = [
    libmnl-cov
    llvmPackages_21.libcxx
    llvmPackages_21.compiler-rt
  ];

  # Compiler & toolchain
  CC = "${llvmPackages_21.clang}/bin/clang";
  CXX = "${llvmPackages_21.clang}/bin/clang++";
  AR = "${llvmPackages_21.llvm}/bin/llvm-ar";
  RANLIB = "${llvmPackages_21.llvm}/bin/llvm-ranlib";
  LD = "${llvmPackages_21.lld}/bin/ld.lld";

  # Coverage flags and runtime paths
  CFLAGS = "-O0 -g -fprofile-instr-generate -fcoverage-mapping --rtlib=compiler-rt -resource-dir=${llvmPackages_21.clang}/resource-root -isystem ${stdenv.cc.libc}/include";
  LDFLAGS = "-fuse-ld=lld -fprofile-instr-generate -fcoverage-mapping -rtlib=compiler-rt -L${stdenv.cc.libc}/lib -Wl,-rpath,${stdenv.cc.libc}/lib";

  dontStrip = true;
  dontSeparateDebugInfo = true;
  doCheck = false;

  meta = {
    description = "libnftnl instrumented with clang coverage flags";
    homepage = "https://netfilter.org/projects/libnftnl/";
    license = "GPL-2.0-or-later";
    platforms = [
      "x86_64-linux"
      "aarch64-linux"
    ];
  };
}
