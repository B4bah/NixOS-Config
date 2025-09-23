{ pkgs, ... }:
{

  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    # Tools
    git
    wget
    kitty
    fastfetch
    gh # GitHub CLI
    bat # Alternative for "cat"
    nil # For syntax syntaxHighlighting for nix language in zed-editor
    pavucontrol
    zapret
    zsh-powerlevel10k # kitty theme

    # IDEs
    vim
    neovim
    zed-editor
    vscode

    # For programming
    mono
		python313
		python314

    # Applications
    telegram-desktop
    discord
    protonvpn-gui
    libreoffice
  ];

}
