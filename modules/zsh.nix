{

  # Zsh and OhMyZsh
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      la = "ls -la";
    };

    ohMyZsh = {
      enable = true;
      plugins = [
        "git"
      ];
      theme = "refined";
    };
    promptInit = ''
      			fastfetch
    '';
  };

}
