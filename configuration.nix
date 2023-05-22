{ pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./modules/ipv6.nix
    ./modules/users.nix
    ./modules/firewall.nix
    ./modules/tailscale.nix
    ./modules/tunnelvr.nix
    ./modules/nixinate.nix
  ];

  boot.loader.grub = {
    enable = true;
    version = 2;
    devices = [ "/dev/sda" ];
  };

  nix = {
    package = pkgs.nixUnstable;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
    binaryCachePublicKeys = [ "tunnelvr.cachix.org-1:IZUIF+ytsd6o+5F0wi45s83mHI+aQaFSoHJ3zHrc2G0=" ];
    binaryCaches = [ "https://tunnelvr.cachix.org" ];
    trustedBinaryCaches = [ "https://tunnelvr.cachix.org" ];
  };

  networking = {
    hostName = "godot-hetzner"; # Define your hostname.
    useDHCP = false;
    interfaces.ens3.useDHCP = true;
  };

  environment.systemPackages = with pkgs; [
    wget
    vim
    htop
    btop
    tmux
    git
  ];

  system.stateVersion = "22.11"; # Did you read the comment?

  users.users.root.initialHashedPassword = "";
  services.openssh.permitRootLogin = "prohibit-password";

  services.openssh.enable = true;
  services.openssh.passwordAuthentication = false;
  services.fail2ban.enable = true;
}

