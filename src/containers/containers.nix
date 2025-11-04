{ inputs, cell }:

let
  pkgs = inputs.nixpkgs;
  n2c = inputs.nix2container.packages.${pkgs.system}.nix2container;

  # The metrics exporter binary from its installables
  metricsExporter = inputs.cells.metrics_exporter.installables.default;
in
{
  metrics-exporter = n2c.buildImage {
    name = "metrics-exporter";
    tag = "latest";

    # Container runtime configuration
    config = {
      # Entrypoint runs the exporter and points it toward /logs
      entrypoint = [
        "${metricsExporter}/bin/metrics_exporter"
        "--bind"
        "0.0.0.0:8080"
        "--log-dir"
        "/logs"
      ];

      # Port for Prometheus scraping / browsers
      ExposedPorts."8080/tcp" = { };
    };

    # What files go into the image
    copyToRoot = pkgs.buildEnv {
      name = "metrics-exporter-root";
      paths = [
        metricsExporter
        pkgs.coreutils
      ];
      pathsToLink = [
        "/bin"
      ];
    };
  };
}
