{ config, pkgs, ... }:

{
  home.packages = with pkgs; [ ];


  # programs.foot.enable = true;
  #
  # xdg.configFile."foot/foot.ini".source = ../../dotfiles/foot/foot.ini;

  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = "JetBrainsMono Nerd Font:size=14";
      };
    };
  };
}
