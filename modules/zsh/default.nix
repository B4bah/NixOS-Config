{

  # Zsh and OhMyZsh
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting = {
      enable = true;
      highlighters = [ "main" "brackets" "pattern" "regexp" "root" "line" ];
    }

    shellAliases = {
      la = "ls -la";
    };

    ohMyZsh = {
      enable = true;

      plugins = [
        "git"
        {
        name = "powerlevel10k-config";
        src = lib.cleanSource ./p10k-config;
        file = "p10k.zsh";
        }

      ];
      theme = "powerlevel10k";
    };

    promptInit = ''
      			fastfetch
    '';
  };

}
