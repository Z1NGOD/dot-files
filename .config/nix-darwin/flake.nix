{
  description = "Example Darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, home-manager }:
  let
    configuration = { pkgs, ... }: {
      environment.systemPackages =
        [ 
          pkgs.vim
          pkgs.neovim
          pkgs.git
          pkgs.lazygit
          pkgs.fd
          pkgs.ripgrep
          pkgs.eza
          pkgs.zoxide
          pkgs.fzf
          pkgs.xz
          pkgs.zsh
          pkgs.thefuck
          pkgs.starship
          pkgs.nodePackages_latest.nodejs
          pkgs.go
          pkgs.stow
        ];

      services.nix-daemon.enable = true;
      nix.settings.experimental-features = "nix-command flakes";
      programs.zsh.enable = true;
      nix.configureBuildUsers = true;
      nix.useDaemon = true;
      system.configurationRevision = self.rev or self.dirtyRev or null;
      system.stateVersion = 5;
      nixpkgs.hostPlatform = "x86_64-darwin";
    };
  in
  {
    darwinConfigurations."MacBook-Pro-Yaroslav" = nix-darwin.lib.darwinSystem {
      modules = [ 
            configuration
        ];
    };

    darwinPackages = self.darwinConfigurations."MacBook-Pro-Yaroslav".pkgs;
  };
}
