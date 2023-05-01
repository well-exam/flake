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
      extraGroupd = [ "wheel" "disk" "networkmanager" "libvirtd" "qemu-libvirtd" "kvm" "i2c" "plugdev" ];
      openssh.authorizedKeys.keys = [
      ];
    };
  };
}
