{ config, pkgs, ... }:

{
  home.packages = with pkgs; [ ];

  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
  };

}
