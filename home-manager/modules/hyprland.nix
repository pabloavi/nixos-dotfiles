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

  # wayland.windowManager.hyprland = {
  #   enable = true;
  #   package = pkgs.hyprland;
  #   xwayland.enable = true;
  #   systemd.enable = true;
  #
  #   settings = {
  #     exec = [
  #       "pgrep -x asztal || asztal"
  #     ];
  #     input = {
  #       kb_layout = "es";
  #     };
  #     decoration = {
  #       rounding = 15;
  #     };
  #     animations = {
  #       enabled = false;
  #     };
  #     bind = [
  #       "SUPER, return, exec, alacritty"
  #       "SUPER, w, killactive"
  #       "SUPER, f, fullscreen"
  #       "SUPER, 1, workspace, 1"
  #       "SUPER, 2, workspace, 2"
  #       "SUPER, 3, workspace, 3"
  #       "SUPER, 4, workspace, 4"
  #       "SUPER, 5, workspace, 5"
  #       "SUPER, 6, workspace, 6"
  #       "SUPER, 7, workspace, 7"
  #       "SUPER, 8, workspace, 8"
  #       "SUPER, 9, workspace, 9"
  #       "SUPER, 10, workspace, 10"
  #
  #       "SUPER SHIFT, 1, movetoworkspacesilent, 1"
  #       "SUPER SHIFT, 2, movetoworkspacesilent, 2"
  #       "SUPER SHIFT, 3, movetoworkspacesilent, 3"
  #       "SUPER SHIFT, 4, movetoworkspacesilent, 4"
  #       "SUPER SHIFT, 5, movetoworkspacesilent, 5"
  #       "SUPER SHIFT, 6, movetoworkspacesilent, 6"
  #       "SUPER SHIFT, 7, movetoworkspacesilent, 7"
  #       "SUPER SHIFT, 8, movetoworkspacesilent, 8"
  #       "SUPER SHIFT, 9, movetoworkspacesilent, 9"
  #       "SUPER SHIFT, 10, movetoworkspacesilent, 10"
  #
  #       "SUPER, H, movefocus, l"
  #       "SUPER, L, movefocus, r"
  #       "SUPER, K, movefocus, u"
  #       "SUPER, J, movefocus, d"
  #
  #       "SUPER SHIFT, H, movewindow, l"
  #       "SUPER SHIFT, L, movewindow, r"
  #       "SUPER SHIFT, K, movewindow, u"
  #       "SUPER SHIFT, J, movewindow, d"
  #     ];
  #   };
  # };
  #
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
