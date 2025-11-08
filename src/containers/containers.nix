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

  debian = n2c.pullImage {
    imageName = "library/debian";
    imageDigest = "sha256:e0249870a90044494c01e74fbfc8b77ab14e6f47cece844d1e1737f7828a7e1e";
    sha256 = "sha256-oKZNuxQ8YtHdrQSYfre1bbOJ7PuPDq1yCsZ/swgWZ4c=";
  };

  insidePkgs = [
    metricsExporter
    coverageGen
    pkgs.bash
  ];

in
{
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
      #Env = [ "PATH=/bin:/nix/store/*/bin" ];
    };
  };
}
