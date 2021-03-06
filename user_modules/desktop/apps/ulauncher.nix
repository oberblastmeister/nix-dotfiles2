{ config, nixosConfig, options, unstable, pkgs, lib, my, ... }:

let
  package = pkgs.ulauncher;
  cfg = config.modules.desktop.apps.ulauncher;
  inherit (lib) mkOption;
in
{
  options.modules.desktop.apps.ulauncher = {
    enable = my.options.mkEnable;
  };

  config = lib.mkIf cfg.enable {
    home.packages = [ package ];
    xdg.configFile."autostart/Ulauncher.desktop".source = nixosConfig.dotfiles.configDir + "/autostart/Ulauncher.desktop";
  };
}
