{ config, pkgs, lib, modulesPath, ... }:

{
  networking = {
    hostName = "mini-slab";
    useDHCP = lib.mkDefault true;
    networkmanager.enable = true;
    firewall.allowedTCPPorts = [ 80 ];
    firewall.allowedUDPPorts = [ ];
  };
}
