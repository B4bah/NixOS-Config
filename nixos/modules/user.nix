{ pkgs, ... }: {
  # Define a user account. Don't forget to set a password with ‘passwd’
  programs.zsh.enable = true;

  users.users.b4bah = {
    isNormalUser = true;
    description = "B4bah (Michael Osipov)";
    extraGroups = [ "networkmanager" "wheel" "input" "libvirtd" "vboxusers" "docker"];
    packages = with pkgs; [];

    shell = pkgs.zsh;
  };

  # Enable automatic login for user
  services.getty.autologinUser = "b4bah";
}