You'll need to install podman (for the dashboards): https://podman.io/

And you'll need to install nix (for the dynlibs/glue): https://nixos.org/download/

```shell
# Start the devshell with all deps
nix develop

# Build the monitoring dashboards and run them with podman
just metrics-rebuild

# Build the fuzzer
just rebuild

# Run the fuzzer
just fuzz-all

# Optionally check if the fuzzer is listening correctly on all cores/ports
./check.sh
```
