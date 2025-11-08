{ inputs, cell }:

let
  pkgs = inputs.nixpkgs;
in
{
  default = pkgs.writeShellApplication {
    name = "virtiofs-serve";

    runtimeInputs = [
      pkgs.virtiofsd
    ];

    text = ''
      set -euo pipefail

      LOG_DIR="$PWD/mounted"
      SOCK="/tmp/virtiofsd-fuzz.sock"

      mkdir -p "$LOG_DIR"

      echo "📁 Serving $LOG_DIR over virtiofs"
      echo "🔌 Socket: $SOCK"
      echo

      # ✅ minimal options that work on recent virtiofsd
      exec virtiofsd \
        --shared-dir "$LOG_DIR" \
        --socket-path "$SOCK" \
        --writeback \
        --allow-direct-io \
        --sandbox=none \
        --cache=auto
    '';
  };
}
