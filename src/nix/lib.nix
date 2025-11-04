{ inputs, cell, ... }:

let
  # Determine system the same way std/flake-parts does
  system = inputs.nixpkgs.stdenv.hostPlatform.system;

  # Access nixpkgs normally
  pkgs = import inputs.nixpkgs {
    inherit system;
    config.allowUnfree = true;
  };

  # libprotobuf-mutator from the flake input (correct)
  lpm = inputs.libprotobuf-mutator.packages.${system}.default;

  # fuzzer toolchain env
  fuzzerEnv = import ./fuzzerEnv.nix {
    inherit inputs cell;
  };
in
{
  inherit fuzzerEnv lpm;
}
