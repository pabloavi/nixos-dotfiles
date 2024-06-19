{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    git-credential-oauth
  ];

  programs.git = {
    enable = true;
    userName = "Pablo";
    userEmail = "pavilesm1@gmail.com";
  };
}
