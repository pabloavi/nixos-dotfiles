{ config, pkgs, inputs, outputs, ... }:

{
  imports = [
    ./configuration.nix
    ./hardware-configuration-usb.nix
  ];
}
