{ config, lib, modulesPath, pkgs, ... }:

{
  networking = {
    hostName = "mini-slab";
    useDHCP = lib.mkDefault true;
    networkmanager.enable = true;
    firewall = {
      allowedTCPPorts = [ 80 9000 ];
      allowedUDPPorts = [ ];
    };
  };
}
