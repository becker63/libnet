{ inputs, cell, ... }:

let
  pkgs = inputs.nixpkgs;
  fenv = inputs.cells.nix.lib.fuzzerEnv;

  libprotobuf-mutator = inputs.cells.nix.lib.lpm;

  # Use same LLVM as fenv
  stdenv = fenv.toolchain.stdenv;

  nimDeps = [
    inputs.protobuf_serialization
    inputs.serialization
    inputs.stew
    inputs.faststreams
    inputs.unittest2
    inputs.protobuf_npeg
  ];
  # Convert list → single string of --passL=... arguments
  passLFlags = builtins.concatStringsSep " " (map (f: "--passL=" + f) fenv.toolchain.rpathFlags);

in
{
  default = stdenv.mkDerivation {
    pname = "libnet-fuzzer";
    version = "0.1.0";
    src = inputs.self + "/src/fuzzer";

    dontUseCmake = true;

    nativeBuildInputs = fenv.toolchain.nativeBuildInputs;
    buildInputs = fenv.toolchain.buildInputs;

    configurePhase = ''
      ${fenv.toolchain.shellEnvHook}
      export NIX_NIM_BUILD_INPUTS="${toString nimDeps} $NIX_NIM_BUILD_INPUTS"

      echo "🔹 Nim → configure"
      nim_builder --phase:configure
    '';

    buildPhase = ''
      ${fenv.toolchain.shellEnvHook}

      echo "PASS L FLAGS: ${passLFlags}"


      mkdir -p build
      echo "🔹 Nim → build/libnetfuzz.so"
      nim c \
        --cc:clang \
        --app:lib \
        --mm:orc --threads:on \
        --debuginfo:on --lineTrace:on --stackTrace:on --assertions:on \
        --passC:"-fPIC" \
        --passL:"-fuse-ld=lld" \
        ${passLFlags} \
        --out:build/libnetfuzz.so \
        harness/export_fuzz.nim
    '';

    installPhase = ''
      ${fenv.toolchain.shellEnvHook}
      runHook preInstall

      mkdir -p build

      echo "🔹 protoc → elaborate.pb.cc"
      ${pkgs.protobuf}/bin/protoc \
        --proto_path=schema \
        --cpp_out=build \
        schema/elaborate.proto

      echo "🔹 compile C++ fuzz parts"
      $CXX -std=c++20 -fPIC \
        $(pkg-config --cflags protobuf libprotobuf-mutator) \
        -Isrc -Ibuild \
        -c build/elaborate.pb.cc -o build/elaborate.pb.o

      $CXX -std=c++20 -fPIC \
        $(pkg-config --cflags protobuf libprotobuf-mutator) \
        -Isrc -Ibuild \
        -c mutator/lpm_consumer.cpp -o build/fuzz.o

      PC_LIBS="$(pkg-config --libs protobuf libprotobuf-mutator | xargs echo)"

      echo "🔹 link lpm-consumer-fuzz with coverage-instrumented libs"
      $CXX -o build/lpm-consumer-fuzz \
        build/fuzz.o build/elaborate.pb.o \
        -Lbuild -lnetfuzz \
        -L${fenv.toolchain.libnftnlCov}/lib -lnftnl \
        -L${fenv.toolchain.libmnlCov}/lib -lmnl \
        $PC_LIBS \
        -fsanitize=fuzzer,address,undefined \
        -fprofile-instr-generate -fcoverage-mapping \
        -lunwind -ldl -pthread \
        -Wl,--whole-archive "${fenv.toolchain.profileRt}" -Wl,--no-whole-archive \
        -Wl,-rpath,'$ORIGIN' \
        -Wl,-rpath,${fenv.toolchain.libnftnlCov}/lib \
        -Wl,-rpath,${fenv.toolchain.libmnlCov}/lib \
        -Wl,-rpath,${libprotobuf-mutator}/lib \
        -Wl,-rpath,${pkgs.protobuf}/lib \
        -Wl,-rpath,${pkgs.libunwind}/lib \
        -Wl,-rpath,${fenv.toolchain.profileRt} \
        -Wl,-rpath,${stdenv.cc.libc}/lib \
        -Wl,--enable-new-dtags

      mkdir -p "$out/bin"
      cp build/lpm-consumer-fuzz "$out/bin/"
      cp build/libnetfuzz.so     "$out/bin/"
      runHook postInstall
    '';

    checkPhase = "echo skipping checks";
    meta.mainProgram = "lpm-consumer-fuzz";
  };
}
