{ inputs, cell, ... }:

let
  system = inputs.nixpkgs.stdenv.hostPlatform.system;

  pkgs = import inputs.nixpkgs {
    inherit system;
  };

  lpm = inputs.libprotobuf-mutator.packages.${system}.default;

  # I like the way numtides devshell defines env
  shellEnvHookFunc =
    env: builtins.concatMapStringsSep "\n" ({ name, value, ... }: ''export ${name}=${value}'') env;

  # fuzzer toolchain env
  fuzzerEnv = import ./fuzzerEnv.nix {
    inherit inputs cell shellEnvHookFunc;
  };

  # information about mounted dirs and such
  containerEnv = import ./containerEnv.nix {
    inherit inputs cell shellEnvHookFunc;
  };

in
{
  inherit fuzzerEnv lpm;
}
