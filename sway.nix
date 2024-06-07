{ config, pkgs, pkgs-unstable, ... }:
{

  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true; # so that gtk works properly
    extraPackages = (with pkgs; [
      wlr-randr
      swaylock
      swayidle
      wl-clipboard
      mako # notification daemon
      dmenu 
      tofi
      avizo
    #for waybar
      networkmanagerapplet
      libnl
      haskellPackages.chronos
      pavucontrol
      font-awesome
      swaysettings
      wdisplays
    ])
    ++
    ( with pkgs-unstable; [
            autotiling
    ]);
    extraSessionCommands = ''
      export SDL_VIDEODRIVER=wayland
      export QT_QPA_PLATFORM=wayland
      export QT_WAYLAND_DISABLE_WINDOWDECORATION="1"
      export _JAVA_AWT_WM_NONREPARENTING=1
      export MOZ_ENABLE_WAYLAND=1
    '';
  };

  programs.waybar.enable = true;

    }
