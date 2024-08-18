
{ config, pkgs, ... }: 
{
  networking.hostName = "asylum"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  networking.nameservers = [ "1.1.1.1" "1.0.0.1" ];

  networking.resolvconf.enable = pkgs.lib.mkForce false;
  networking.dhcpcd.extraConfig = "nohook resolv.conf";
  networking.networkmanager.dns = "none";
  services.resolved.enable = false;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;
}
