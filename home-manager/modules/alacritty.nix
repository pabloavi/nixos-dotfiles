{ config, pkgs, ... }:

{
  home.packages = with pkgs; [ ];


  programs.alacritty.enable = true;

  xdg.configFile."alacritty".source = ../../dotfiles/alacritty;
}
