{ config, pkgs, ... }:

{
  home.packages = with pkgs; [ ];

  imports = [
    ./foot.nix
    # ./alacritty.nix
    ./waybar.nix
    ./rofi-wayland.nix
  ];


  wayland.windowManager.hyprland.enable = true;

  xdg.configFile."hypr/hyprland.conf".source = ../../dotfiles/hypr/hyprland.conf;

  services.hyprpaper = {
    enable = true;
    settings = {
      splash = false;
      preload = [ "~/.local/share/backgrounds/deer_god_2k.png" ];
      wallpaper = [
        "eDP-1, ~/.local/share/backgrounds/deer_god_2k.png"
        "HDMI-A-1, ~/.local/share/backgrounds/deer_god_2k.png"
      ];
    };
  };
}
