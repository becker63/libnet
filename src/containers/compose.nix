{ inputs, cell }:

let
  inherit (inputs.std.lib.dev) mkArion;

  metricsExporter = cell.containers.metrics-exporter;
  prometheus = cell.containers.prometheus;
  grafana = cell.containers.grafana;
in
{
  config = mkArion {
    project.name = "metrics";

    services.metrics-exporter.service = {
      image = metricsExporter.image.name;
      ports = [ "9677:9677" ];
      restart = "always";
      volumes = [
        {
          type = "bind";
          source = "$PWD/mounted";
          target = "/mounted";
        }
      ];
      user = "0:0";
    };

    services.prometheus.service = {
      image = prometheus.image.name;
      ports = [ "9090:9090" ];
      restart = "always";
      user = "0:0";

      volumes = [
        {
          type = "volume";
          source = "prometheus-data";
          target = "/prometheus-data";
        }
      ];
    };

    services.grafana.service = {
      image = grafana.image.name;
      ports = [ "3000:3000" ];
      restart = "always";
      user = "0:0";

      volumes = [
        {
          type = "volume";
          source = "grafana-data";
          target = "/var/lib/grafana";
        }
        {
          type = "volume";
          source = "grafana-logs";
          target = "/var/log/grafana";
        }
      ];
    };

    # ✅ Declare named volumes
    docker-compose.volumes = {
      grafana-data = { };
      grafana-logs = { };
      prometheus-data = { };
    };
  };
}
