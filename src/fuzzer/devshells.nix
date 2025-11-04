{ inputs, cell }:
let
  pkgs = inputs.nixpkgs;
  llvm = pkgs.llvmPackages_21;
  fenv = inputs.cells.nix.lib.fuzzerEnv;

in
{
  default = llvm.libcxxStdenv.mkDerivation {
    name = "libnet-std-env";
    dontUnpack = true;
    dontBuild = true;

    buildInputs =
      fenv.toolchain.nativeBuildInputs
      ++ fenv.toolchain.buildInputs
      ++ [
        cell.installables.default
      ];

    shellHook = ''
      export PATH="$HOME/.nimble/bin:$PATH"
      echo "🔨 Welcome to libnet (LLVM devshell)"
      echo
    '';
  };
}
