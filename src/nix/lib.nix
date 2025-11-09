{ inputs, cell, ... }:

let
  system = inputs.nixpkgs.stdenv.hostPlatform.system;
  lib = inputs.nixpkgs.lib;

  pkgs = import inputs.nixpkgs { inherit system; };

  shellEnvHookFunc =
    env: lib.strings.concatMapStringsSep "\n" ({ name, value, ... }: ''export ${name}=${value}'') env;

  fuzzerEnv = import ./fuzzerEnv.nix {
    inherit inputs cell shellEnvHookFunc;
  };

  runtimeShared = import ./runtimeShared.nix {
    inherit inputs cell shellEnvHookFunc;
  };

  lpm = inputs.libprotobuf-mutator.packages.${system}.default;

in
{
  inherit fuzzerEnv lpm runtimeShared;
}
