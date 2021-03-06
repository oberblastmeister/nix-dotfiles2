{ options, config, lib, my, pkgs, ... }:

let
  cfg = config.modules.desktop.browsers.chrome;
in
{
  options.modules.desktop.browsers.chrome = {
    enable = my.options.mkEnable;
  };

  config = lib.mkIf cfg.enable {
    home.packages = with pkgs; [
      google-chrome
      # also needed for cargo doc --open to work
      (pkgs.writeShellScriptBin "chrome" ''
        google-chrome-stable "$@"
      '')
    ];
  };
}
