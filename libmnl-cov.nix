{
  fetchurl,
  llvmPackages_21,
  pkg-config,
  stdenv,
}:

llvmPackages_21.stdenv.mkDerivation rec {
  pname = "libmnl-cov";
  version = "1.0.5";

  src = fetchurl {
    url = "https://netfilter.org/projects/libmnl/files/libmnl-${version}.tar.bz2";
    sha256 = "09851ns07399rbz0y8slrlmnw3fn1nakr8d37pxjn5gkks8rnjr7";
  };

  nativeBuildInputs = [
    pkg-config
    llvmPackages_21.clang
    llvmPackages_21.lld
  ];

  buildInputs = [
    llvmPackages_21.libcxx
    llvmPackages_21.compiler-rt
  ];

  # Environment vars used by configure + make
  CC = "${llvmPackages_21.clang}/bin/clang";
  CXX = "${llvmPackages_21.clang}/bin/clang++";
  AR = "${llvmPackages_21.llvm}/bin/llvm-ar";
  RANLIB = "${llvmPackages_21.llvm}/bin/llvm-ranlib";
  LD = "${llvmPackages_21.lld}/bin/ld.lld";

  CFLAGS = "-O0 -g -fprofile-instr-generate -fcoverage-mapping --rtlib=compiler-rt -resource-dir=${llvmPackages_21.clang}/resource-root -isystem ${stdenv.cc.libc}/include";
  LDFLAGS = "-fuse-ld=lld -fprofile-instr-generate -fcoverage-mapping -rtlib=compiler-rt -L${stdenv.cc.libc}/lib -Wl,-rpath,${stdenv.cc.libc}/lib";

  dontStrip = true;
  dontSeparateDebugInfo = true;
  doCheck = false;

  meta.description = "libmnl instrumented with clang coverage flags";
}
