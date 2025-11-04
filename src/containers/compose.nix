{ inputs, cell }:
let
  pkgs = inputs.nixpkgs;
  metricsExporterImg = cell.containers.metrics-exporter;
in
{
  config.project.name = "metrics";

  config.services.metrics-exporter = {
    # Use the prebuilt container image
    image.imageName = metricsExporterImg.imageName;

    # Expose the port defined by entrypoint in the image
    service.ports = [
      "8080:8080"
    ];

    # Mount host logs directory so exporter can read from it
    service.volumes = [
      "${toString cell.root}/logs:/logs"
    ];

    # Let docker restart it if it crashes
    service.restart = "always";
  };

  # Let arion know that this image already exists and does not need rebuilding
  prebuiltImages = {
    metrics-exporter = metricsExporterImg;
  };
}
