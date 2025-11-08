{ inputs, cell }:

let
  mkMicrovm = inputs.std.lib.ops.mkMicrovm;
  lib = inputs.nixpkgs.lib;
in
{
  libnet-fuzz-vm = mkMicrovm (
    { pkgs, config, ... }:

    let
      fenv = inputs.cells.nix.lib.fuzzerEnv;
      fuzzer = inputs.cells.fuzzer.installables.default;

      # Systemd env defs do not like export
      envLines =
        lib.concatStringsSep "\n" (
          map (e: "${e.name}=" + (if e ? eval then e.eval else e.value)) fenv.toolchain.env
        )
        + "\n";

      runFuzzerScript = pkgs.writeShellScript "run-libnet-fuzzer" ''
        #!/bin/sh
        set -euo pipefail
        cd /var/lib/libnet-fuzz/corpus
        exec "${fuzzer}/bin/lpm-consumer-fuzz" "$PWD" \
          2>&1 | tee -a /var/lib/libnet-fuzz/logs/fuzz-$(date +%s).log
      '';
    in
    {
      # No host networking, no TAP, no bridges, no NAT
      microvm.host = { };

      system.stateVersion = "24.05";
      networking.hostName = "libnet-fuzz";
      boot.initrd.systemd.enable = true;

      microvm.optimize.enable = true;
      # Much faster to build due to parallel and no performance impact
      microvm.storeDiskType = "squashfs";

      microvm = {
        hypervisor = "qemu";
        vcpu = 8;
        mem = 4096;

        # No networking interfaces
        interfaces = [ ];

        shares = [
          {
            proto = "virtiofs";

            # These two dont matter, just a microvm requirement
            tag = "fuzz-data";
            source = "fuzz-data";

            mountPoint = "/var/lib/libnet-fuzz";
            socket = "/tmp/virtiofsd-fuzz.sock";
          }
        ];

      };

      environment.systemPackages = [
        fuzzer
        pkgs.bashInteractive
        pkgs.coreutils
        pkgs.procps
      ];

      environment.etc."libnet-env".text = envLines;

      systemd.services.prepare-fuzz-dirs = {
        wantedBy = [ "multi-user.target" ];
        before = [ "fuzzer.service" ];

        after = [ "local-fs.target" ];
        requires = [ "local-fs.target" ];

        serviceConfig = {
          Type = "oneshot";
          RemainAfterExit = true;
          ExecStart = [
            "${pkgs.coreutils}/bin/mkdir -p /var/lib/libnet-fuzz/corpus"
            "${pkgs.coreutils}/bin/mkdir -p /var/lib/libnet-fuzz/logs"
            "${pkgs.coreutils}/bin/chmod 0777 /var/lib/libnet-fuzz/corpus /var/lib/libnet-fuzz/logs"
          ];
        };
      };

      # Only the fuzzer runs inside the VM
      systemd.services.fuzzer = {
        wantedBy = [ "multi-user.target" ];
        requires = [ "prepare-fuzz-dirs.service" ];
        after = [ "prepare-fuzz-dirs.service" ];

        serviceConfig = {
          Type = "simple";
          Restart = "always";
          RestartSec = 2;
          WorkingDirectory = "/var/lib/libnet-fuzz/corpus";
          EnvironmentFile = "/etc/libnet-env";
          ExecStart = "${runFuzzerScript}";
        };
      };

      # Optional: set a password for debugging
      users.users.root.initialPassword = "root";
    }
  );
}
