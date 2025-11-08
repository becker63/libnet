{ inputs, cell }:
let
  pkgs = inputs.nixpkgs;
  mkOCI = inputs.std.lib.ops.mkOCI;
  system = inputs.nixpkgs.stdenv.hostPlatform.system;

  n2c = inputs.n2c.outputs.packages.${system}.nix2container;

  metricsExporter = inputs.cells.metrics_exporter.installables.default;
  coverageGen = inputs.cells.metrics_exporter.installables.coverage-gen;

  debugEntrypoint = pkgs.writeShellScriptBin "sleep-forever" ''
    echo "[debug] container started, blocking forever"
    while true; do sleep 100000; done
  '';

  alpine = n2c.pullImage {
    imageName = "library/alpine";
    imageDigest = "sha256:765942a4039992336de8dd5db680586e1a206607dd06170ff0a37267a9e01958";
    sha256 = "sha256-IeHFkCpsDsBRR9yw5/D/Qx36hoCfkeoevJsF0uOv83M=";
  };

  insidePkgs = [
    metricsExporter
    coverageGen
  ];

in
{
  metrics-exporter = mkOCI {
    name = "metrics-exporter";
    entrypoint = debugEntrypoint;

    runtimeInputs = insidePkgs;

    options = {
      fromImage = alpine;
      copyToRoot = [
        (pkgs.buildEnv {
          name = "root";
          paths = insidePkgs;
          pathsToLink = [ "/bin" ];
        })
      ];
    };

    config = {
      ExposedPorts."8080/tcp" = { };
      Env = [ "PATH=/bin:/nix/store/*/bin" ];
    };
  };
}
