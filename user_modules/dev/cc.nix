{ config, options, lib, my, pkgs, ... }:

let
  cfg = config.modules.dev.cc;
in
{
  options.modules.dev.cc = {
    enable = my.options.mkEnable;
  };

  config = lib.mkIf cfg.enable {
    home.packages = with pkgs; [
      clang-tools
      gdb
      gnumake
      cmake
    ];
  };
}
