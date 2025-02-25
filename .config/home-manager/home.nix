{ config, pkgs, ... }:

{
  home.username = "yaroslavborovskyi";
  home.homeDirectory = "/Users/yaroslavborovskyi";

  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.packages = [
  ];

  home.file = {
    ".config/starship.toml".source = ~/dot-files/starship.toml;
    ".config/wezterm".source = ~/dot-files/wezterm;
    ".zshrc".source = ~/dot-files/.zshrc;
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
