{ inputs, cell }:
let
  pkgs = inputs.nixpkgs;
  fenv = inputs.cells.nix.lib.fuzzerEnv;

  fuzzer = inputs.cells.fuzzer.installables.default;

  coverageScript = import ./coverage-gen.nix { inherit pkgs fenv; };

in
{
  default = pkgs.mkShell {
    name = "nim-devshell";

    buildInputs =
      with pkgs;
      [
        nim
        nimble
        clang
        nimlsp
        nph
      ]
      ++ [
        coverageScript
        fuzzer
      ]
      ++ fenv.toolchain.nativeBuildInputs;

    shellHook = ''
      export PATH=$HOME/.nimble/bin:$PATH
      echo "🔧 Nim devshell ready"
    '';
  };
}
