{ config, pkgs, pkgs-unstable, ... }:
{

 # Enable the X11 windowing system and wayland
   services.xserver.enable = true;

  # Enable the display Manager & Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.displayManager.gdm.wayland = true;
  services.xserver.desktopManager.gnome.enable = true;

}
