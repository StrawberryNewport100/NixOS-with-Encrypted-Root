#   Help is available in the configuration.nix(5) man page and ‘nixos-help’.

{ config, pkgs, pkgs-unstable, ... }:

{
    imports =
        [ 
        #packages
        ./packages.nix

        #sway window manager 
        ./sway.nix

        #display servers and display managers
        ./display.nix

        #users 
        ./users.nix

        #Networking, sound, settings etc.
        ./system.nix

        # Include the results of the hardware scan.
        /etc/nixos/hardware-configuration.nix

        ];

    #enable flakes
    nix.settings.experimental-features = [ "nix-command" "flakes" ];
}

