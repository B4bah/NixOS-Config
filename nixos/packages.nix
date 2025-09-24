{ pkgs, ... }:
{

  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [

    # Applications
    telegram-desktop
    discord
    protonvpn-gui
    libreoffice
    xfce.thunar # File manager
    yazi # Terminal file manager
    obsidian
    # polymc

    rofi # Application launcher
    wofi # Application launcher


    # For audio
    pipewire
    wireplumber

    pavucontrol
    pulseaudio
    pamixer

    # Tools
    git
    wget
    zapret
    tree
    btop

    # For terminal
    kitty
    fastfetch
    gh # GitHub CLI
    bat # Alternative for "cat"
    nil # For syntax syntaxHighlighting for nix language in zed-editor
    tree
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
    gcc
    clang_21
    nodejs

    # For wayland
    xwayland
    wl-clipboard
    cliphist

    # For hyprland
    herbstluftwm
    hyprland
    seatd
    polybar
    xdg-desktop-portal-hyprland
    waybar
    swww

    # Home manager
    home-manager

    # Other
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5ct
  ];

}
