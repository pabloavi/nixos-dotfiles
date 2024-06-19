{ config, pkgs, inputs, outputs, ... }:

{
  imports = [
    ./configuration.nix
    ./hardware-configuration-vm.nix
  ];
}
