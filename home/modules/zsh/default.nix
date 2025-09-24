{ config, ... }:
{

  # Zsh and OhMyZsh
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting = {
      enable = true;
      highlighters = [ "main" "brackets" "pattern" "regexp" "line" ];
    };

    shellAliases =
      let
        flakeDir = "~/NixOS";
      in {
      system-rebuild = "sudo nixos-rebuild switch --flake ${flakeDir}";
      flake-update = "nix flake update ${flakeDir}";
      flake-upgrade = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";
      
      home-rebuild = "home-manager switch --flake ${flakeDir}";

      conf = "nvim ${flakeDir}/nixos/configuration.nix";
      pkgs = "nvim ${flakeDir}/nixos/packages.nix";

      la = "ls -la";
      ll = "ls -l";
      ff = "fastfetch";
    };

    ohMyZsh = {
      enable = true;

      plugins = [
        "git"
				"sudo"
      ];
      theme = "powerlevel10k";
    };

    promptInit = ''
      			fastfetch
    '';
  };

}
