{
  lib,
  stdExe,
  pkgs,
  ...
}:
{
  settings = {
    processes = {
      build_container.command = ''
        ${stdExe} //containers/script/default:build
      '';

      wait.command = ''
        while true; do
          ${stdExe} list
          clear
          sleep 2
        done
      '';
    };
  };
}
