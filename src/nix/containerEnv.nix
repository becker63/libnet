{
  inputs,
  cell,
  shellEnvHookFunc,
}:

{
  mounted = rec {
    # Gross hack, but needed.
    # Cant have 80 zottabytes of corpus in the nix store
    # Just uh, never run outside the root :)
    hostDir = "$PWD/mounted";

    env = [
      {
        name = "PROFRAW_LOCATION";
        value = "bar";
      }
    ];

    shellEnvHook = shellEnvHookFunc env;
  };
}
