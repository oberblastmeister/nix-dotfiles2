{ options, config, pkgs, lib, my, ... }:

let
  cfg = config.modules.dev.python;
in
{
  options.modules.dev.python = {
    enable = my.options.mkEnable;
  };

  config = lib.mkIf cfg.enable {
    home.packages = with pkgs; [
      python310
      python39Packages.pip
      python39Packages.ipython
      black
      python39Packages.setuptools
      python39Packages.pylint
      python39Packages.poetry
    ];
  };
}
