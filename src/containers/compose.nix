{ inputs, cell }:

let
  inherit (inputs.std.lib.dev) mkArion;
  metricsExporter = cell.containers.metrics-exporter;
in
{
  config = mkArion {
    project.name = "metrics";

    services.metrics-exporter.service = {
      image = metricsExporter.image.name;
      ports = [ "9677:9677" ];
      volumes = [
        {
          type = "bind";
          # Gross hack, but needed.
          # Cant have 80 zottabytes of corpus in the nix store
          # Just uh, never run outside the root :)
          source = "$PWD/mounted";
          target = "/mounted";
        }
      ];
      user = "0:0";
      restart = "always";
    };
  };
}
