{ config, lib, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  users.users.brian = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  modules.presets.enable = "full";
  home-manager.users.brian.modules = {
    presets.enable = "minimal";
    dev = {
      python.enable = true;
    };
  };
}
