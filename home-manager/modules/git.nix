{ config, pkgs, ... }:

{
  home.packages = with pkgs; [ ];

  programs.git = {
    enable = true;
    userName = "Pablo";
    userEmail = "pavilesm1@gmail.com";
    extraConfig = {
      credential.helper = "oauth";
    };
  };

  programs.git-credential-oauth.enable = true;
}
