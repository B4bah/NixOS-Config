{ lib, ... }:
{

  # Zsh and OhMyZsh
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting = {
      enable = true;
      highlighters = [ "main" "brackets" "pattern" "regexp" "root" "line" ];
    };

    shellAliases = {
      la = "ls -la";
    };

    ohMyZsh = {
      enable = true;

      plugins = [
        "git"


      ];
      theme = "agnoster";
    };

    promptInit = ''
      			fastfetch
    '';
  };

}
