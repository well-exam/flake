{ lib, pkgs, ... }:

{
  config = {
    home-manager.users.jliu = ./home.nix;
    users.users.jliu = {
      isNormalUser = true;
      home = "/home/jliu";
      createHome = true;
      passwordFile = "/persist/encrypted-passwords/jliu";
      shell = pkgs.fish;
      extraGroups = [ "wheel" "disk" "networkmanager" "libvirtd" "qemu-libvirtd" "kvm" "i2c" "plugdev" ];
      openssh.authorizedKeys.keys = [
       "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIM031hrkFWdewXy7DpoV393InfU2A3tCXsFQaZ+DQ9eE public@jliu.net"
      ];
    };
  };
}
