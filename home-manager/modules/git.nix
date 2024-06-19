{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Pablo";
    userEmail = "pavilesm1@gmail.com";
  };
}
