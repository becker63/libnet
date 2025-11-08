{
  lib,
  stdExe,
  pkgs,
  ...
}:
{
  cli.options.port = 8213;

  settings.processes = {

    metrics_build = {
      command = ''${stdExe} //containers/containers/metrics-exporter:build'';
    };

    metrics_load = {
      command = ''${stdExe} //containers/containers/metrics-exporter:load'';
      depends_on."metrics_build".condition = "process_completed_successfully";
    };

    metrics_run = {
      command = ''${stdExe} //containers/compose/config:up'';
      depends_on."metrics_load".condition = "process_completed_successfully";
    };

    virtIO_daemon_run = {
      command = ''
        ${stdExe} //containers/script/default:run
      '';
      ready_log_line = "Waiting for vhost-user socket connection";
    };

    vm_run = {
      command = ''
        ${stdExe} //containers/microvm/libnet-fuzz-vm:run
      '';
      depends_on."virtIO_daemon_run".condition = "process_log_ready";
      ready_log_line = "Run 'nixos-help' for the NixOS manual.";
    };

  };
}
