{ config, pkgs, ... }:

{
  home.packages = with pkgs; [ ];

  programs.git = {
    enable = true;
    userName = "Pablo";
    userEmail = "pavilesm1@gmail.com";
  };

  programs.git-credential-oauth.enable = true;
}
