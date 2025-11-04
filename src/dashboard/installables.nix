{ inputs, cell }:
{
  default = inputs.nixpkgs.stdenv.mkDerivation {
    pname = "libnet-fuzzer";
    version = "0.1.0";
    src = ./.;
    buildPhase = "echo building libnet-fuzzer";
    installPhase = "mkdir -p $out; echo ok > $out/ok.txt";
  };
}
