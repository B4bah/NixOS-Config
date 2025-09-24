{ config, ... }:
{

  # Zsh and OhMyZsh
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
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

    # oh-my-zsh = {
    #   enable = true;
    # };

    # plugins = [
    #   {
    #     name = "powerlevel10k";
    #     src = pkgs.zsh-powerlevel10k;
    #     file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
    #   }
    #   {
    #     name = "powerlevel10k-config";
    #     src = lib.cleanSource ./p10k-config;
    #     file = "p10k.zsh";
    #   }
    # ];

    oh-my-zsh = {
      enable = true;

      plugins = [
        "git"
        "sudo"
      ];
      theme = "agnoster";
    };

    completionInit = ''
      fastfetch
    '';
  };

}
