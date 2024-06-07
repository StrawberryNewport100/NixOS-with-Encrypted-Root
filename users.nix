{ config, pkgs, pkgs-unstable, ... }:
{

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.USER1 = {
    isNormalUser = true;
    description = "privileged user who will manage the flake";
    extraGroups = [ "networkmanager" "wheel" "video" ];
    packages = with pkgs; [
      firefox
    ];
  };
  users.users.USER2 = {
    isNormalUser = true;
    description = "other users";
    extraGroups = [ "networkmanager" "video"];
    packages = with pkgs; [
      firefox
    ];
  };
}
