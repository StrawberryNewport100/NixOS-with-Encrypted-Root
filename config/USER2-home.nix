{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "USER2";
  home.homeDirectory = "/home/USER2";
  
 #Forget all that let's just manage some figgies 
 home.file.".config/sway/config".source = ./sway/config; 
 home.file.".config/tmux/tmux.conf".source = ./tmux/tmux.conf; 
 home.file.".config/alacritty/alacritty.toml".source = ./alacritty/alacritty.toml; 
 home.file.".config/waybar".source = ./waybar;
 home.file.".config/nvim".source = ./nvim;
 home.file.".bashrc".source = ./bashrc;
 home.file.".config/tofi".source = ./tofi;




  home.stateVersion = "23.11"; # Please read the comment before changing.

  home.packages = [
  ];

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
