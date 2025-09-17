{

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    zapret-discord-youtube.url = "github:kartavkun/zapret-discord-youtube";
  };

  outputs =
    {
      self,
      nixpkgs,
      zapret-discord-youtube,
    }:
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          zapret-discord-youtube.nixosModules.default
          {
            services.zapret-discord-youtube = {
              enable = true;
              config = "general";
            };
          }
        ];
      };

    };

}
