{ inputs, cell }:
let
  pkgs = inputs.nixpkgs;
  fenv = inputs.cells.nix.lib.fuzzerEnv;

  fuzzer = inputs.cells.fuzzer.installables.default;

  coverageScript = import ./coverage-gen.nix { inherit pkgs fenv fuzzer; };

  nimDeps = [
    inputs.nim_metrics
    inputs.chronos
    inputs.results
    inputs.stew
    inputs.http-utils
  ];
in
{
  coverage-gen = coverageScript;

  default = pkgs.stdenv.mkDerivation {
    pname = "metrics_exporter";
    version = "0.1.0";
    src = inputs.self + "/src/metrics_exporter";

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
      mkdir -p build

      echo "🔹 Nim → build metrics_exporter"
      nim c \
        --cc:clang \
        -d:metrics \
        --debuginfo --lineTrace:on --stackTrace:on --assertions:on \
        --mm:orc --threads:on \
        --out:build/metrics_exporter \
        src/main.nim
    '';

    installPhase = ''
      ${fenv.toolchain.shellEnvHook}
      runHook preInstall

      mkdir -p "$out/bin"
      cp build/metrics_exporter "$out/bin/"
      cp ${coverageScript}/bin/coverage-report $out/bin/

      runHook postInstall
    '';

    checkPhase = "echo skipping tests";
    meta.mainProgram = "metrics_exporter";
  };
}
