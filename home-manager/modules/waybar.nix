{ config, pkgs, ... }:

{
  home.packages = with pkgs; [ ];

  programs.waybar.enable = true;

  xdg.configFile."waybar/config".source = ../../dotfiles/waybar/config;
  xdg.configFile."waybar/style.css".source = ../../dotfiles/waybar/style.css;
}
