{
  inputs,
  cell,
}:
let
  inherit (inputs.std) lib;
  inherit (inputs) nixpkgs;
in
{
  default = lib.dev.mkShell {
    name = "dashboard";

    # tools / deps
    packages = with nixpkgs; [
      nim
      nimble
      nimlsp
      xonsh
    ];

    env = [
      {
        name = "PATH";
        eval = "$HOME/.nimble/bin:$PATH";
      }
    ];

    commands = [
      {
        name = "serve";
        command = "nimble run";
        category = "dashboard";
        help = "Start the dashboard service";
      }
    ];
  };
}
