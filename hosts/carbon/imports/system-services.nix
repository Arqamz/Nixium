{ config, pkgs, ... }: 
{
  services = {

    upower = {
      enable = true;
      percentageLow = 15;
    };

    openssh = {
      enable = true;
    };

    ntp = {
      enable = true;
    };
    
    power-profiles-daemon = {
	enable = true;
    };

    devmon = {
      enable = true;
    };

    gvfs = {
      enable = true;
    };

    udisks2 = {
      enable = true;
    };

  };

  hardware.bluetooth = {
    enable = true;
  };

  virtualisation.docker.enable = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;
}
