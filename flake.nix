{
  description = "libnet using divnix/std with flake-parts root devshell";

  inputs = {

    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    # Force root-level nixpkgs to dominate all others
    std.url = "github:divnix/std";
    std.inputs.nixpkgs.follows = "nixpkgs";

    # Avoid std pulling its own nixpkgs
    std.inputs.devshell.url = "github:numtide/devshell";
    std.inputs.devshell.inputs.nixpkgs.follows = "nixpkgs";

    std.inputs.microvm = {
      url = "github:microvm-nix/microvm.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix2container.url = "github:nlewo/nix2container";
    nix2container.inputs.nixpkgs.follows = "nixpkgs";

    libprotobuf-mutator = {
      url = "github:becker63/libprotobuf-mutator";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # nim deps (all flake = false)
    nim_metrics = {
      url = "github:status-im/nim-metrics";
      flake = false;
    };
    chronos = {
      url = "github:status-im/nim-chronos";
      flake = false;
    };
    http-utils = {
      url = "github:status-im/nim-http-utils";
      flake = false;
    };
    results = {
      url = "github:arnetheduck/nim-results";
      flake = false;
    };
    protobuf_serialization = {
      url = "github:status-im/nim-protobuf-serialization";
      flake = false;
    };
    serialization = {
      url = "github:status-im/nim-serialization";
      flake = false;
    };
    stew = {
      url = "github:status-im/nim-stew";
      flake = false;
    };
    faststreams = {
      url = "github:status-im/nim-faststreams";
      flake = false;
    };
    unittest2 = {
      url = "github:status-im/nim-unittest2";
      flake = false;
    };
    protobuf_npeg = {
      url = "github:status-im/npeg/22449099";
      flake = false;
    };
  };

  outputs =
    inputs@{
      self,
      std,
      flake-parts,
      nixpkgs,
      ...
    }:
    let
      # ✅ define systems ONCE
      systems = [
        "x86_64-linux"
        "aarch64-linux"
      ];
    in
    with std;

    growOn
      {
        inherit inputs systems;
        cellsFrom = ./src;
        cellBlocks = [
          (blockTypes.installables "installables")
          (blockTypes.devshells "devshells")
          (blockTypes.containers "apps")
          (blockTypes.functions "lib")
          (blockTypes.microvms "microvm")
          (blockTypes.runnables "script")
        ];
      }

      # ✅ flake-parts root devshell, also using shared `systems`
      (
        flake-parts.lib.mkFlake
          {
            inherit inputs;
          }
          {
            inherit systems;

            perSystem =
              { system, ... }:
              let
                pkgs = nixpkgs.legacyPackages.${system};
              in
              {
                devShells.default = pkgs.mkShell {
                  name = "libnet-root-std-shell";
                  packages = [
                    inputs.std.packages.${system}.std
                  ];
                  shellHook = ''
                    echo "🧬 Launching libnet std environment for ${system}"
                    echo "Type 'exit' to leave std"

                    USER_SHELL=$(getent passwd "$USER" | cut -d: -f7)
                    [ -n "$USER_SHELL" ] && export SHELL="$USER_SHELL"

                    exec std
                  '';
                };
              };
          }
      );
}
