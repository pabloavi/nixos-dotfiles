{ config, pkgs, ... }:

{
  home.packages = with pkgs; [ ];

  imports = [
    # ./foot.nix
    ./alacritty.nix
    ./waybar.nix
  ];


  wayland.windowManager.hyprland.enable = true;

  xdg.configFile."hypr/hyprland.conf".source = ../../dotfiles/hypr/hyprland.conf;
}
