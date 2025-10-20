#!/usr/bin/env bash
# check-fuzz-ports.sh
# Lists all expected fuzzer metrics ports and which processes are listening.

set -euo pipefail

base_port=8080
cores=$(nproc)
end_port=$((base_port + cores))

echo "🔍 Checking expected fuzzer ports: ${base_port}–${end_port}"
echo ""

for ((p=base_port; p<=end_port; p++)); do
    if sudo ss -ltnp | grep -q ":${p} "; then
        echo "✅ Port ${p} is LISTENING:"
        sudo ss -ltnp | grep ":${p} " | awk '{print "   " $0}'
    else
        echo "❌ Port ${p} is not listening"
    fi
done

echo ""
echo "🧩 Summary (all current listeners on 8080+ ports):"
sudo ss -ltnp | grep ":808"
