# NixOS configuration with Encrypted Root and Swap 

This setup allows for encrypted root partition and will display the windows dual boot entries in grub through os prober 

Thank you very much to @martijnvermaat and @walkermalling who both made detailed gists on encrypting your root in NixOS:

https://gist.github.com/martijnvermaat/76f2e24d0239470dd71050358b4d5134

https://gist.github.com/walkermalling/23cf138432aee9d36cf59ff5b63a2a58

I followed their guidance along with the NixOS guide on dualbooting:
https://nixos.wiki/wiki/Dual_Booting_NixOS_and_Windows

the grub config can be found in the sytem.nix module: 

```

  # GRUB
  boot.loader = {
    efi.canTouchEfiVariables = true;
    grub = {
      enable = true;
      devices = [ "nodev" ];
      efiSupport = true;
      enableCryptodisk = true;
      useOSProber = true;
    };
  };

  # luks
  boot.initrd.luks.devices = {
    crypted = {
      device = "/dev/disk/by-uuid/<UUID of your luks partition>";
      preLVM = true;
    };
  };

```

Home-manager is installed as a module so that I can manage the dotfiles of all my users in one place. 

Shoutout to @zootedb0t for the neovim and alacritty colorscheme citruszest
https://github.com/zootedb0t/citruszest.nvim

I don't plan on updating this repository very frequently, as I am very much still learning Nix. 
I hope that sharing this might help someone with a similar set up install nix. 

*to err is human to forgive is divine*


