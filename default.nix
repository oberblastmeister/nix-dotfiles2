{ inputs, config, lib, pkgs, ... }:

let
  inherit (lib) mkDefault;
in
{
  imports =
    [ inputs.home-manager.nixosModules.home-manager ]
    ++ lib.my.modules.importAllRec' ./modules;

  modules = {
    nix.enable = true;
    boot.systemd-boot.enable = mkDefault true;
  };

  time = {
    hardwareClockInLocalTime = mkDefault true;
    timeZone = "US/Eastern";
  };

  security = {
    sudo.enable = mkDefault true;

    # has some permission denied issues when installing fonts
    doas = {
      enable = mkDefault false;
      extraRules = [
        {
          groups = [ "wheel" ];
          # allow environment variables to be kept
          # must be kept on or stuff like NIX_PATH will fail
          keepEnv = true;
          # allow password to be skipped for a while
          persist = true;
        }
      ];
    };
  };

  networking = {
    # firewall.enable = mkDefault true;

    # the installation environment enables this
    # gnome enables this
    # but other ones don't
    networkmanager.enable = mkDefault true;
  };

  # essentials
  environment.systemPackages = with pkgs; [
    cached-nix-shell
    git
    vim
    curl
    wget
    gcc
  ];

  programs = {
    fish.enable = true;
    zsh.enable = true;
    # very buggy perl script
    # sometimes needs the channel to be there
    command-not-found.enable = false;
  };

  users.defaultUserShell = pkgs.fish;

  system.stateVersion = "22.05";
}
