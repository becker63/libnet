{
  inputs = { utils.url = "github:numtide/flake-utils"; };
  outputs = { self, nixpkgs, utils }:
    utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system};
      in {
        devShell = pkgs.mkShell {
          buildInputs = with pkgs; [
            nim
            nimble
            clang
            libnfnetlink
            libnetfilter_queue
            libmnl
            libnftnl
            libnetfilter_conntrack
            pkg-config
            nph
            nimlsp
            just
            (pkgs.writeShellScriptBin "nimlsp-stable" ''
              exec ${pkgs.nimlsp}/bin/nimlsp "$@"
            '')
          ];

          shellHook = ''
            export PATH=$HOME/.nimble/bin:$PATH
            export NIM_LSP=${pkgs.nimlsp}/bin/nimlsp
            just gen
            xonsh
          '';
        };

      });
}
