{

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.05";

    home-manager ={
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    polymc.url = "github:PolyMC/PolyMC";

    # zapret-discord-youtube.url = "github:kartavkun/zapret-discord-youtube";
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-stable,
      home-manager,
      # zapret-discord-youtube,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
    in
    {
      
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        specialArgs = {
          pkgs-stable = import nixpkgs-stable {
            inherit system;
            config.allowUnfree = true;
          };
          inherit inputs system;
        };


        modules = [
          ./nixos/configuration.nix
          inputs.nixvim.nixosModules.nixvim

          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.b4bah = import ./home/home.nix;
          }

          # zapret-discord-youtube.nixosModules.default
          # {
          #   services.zapret-discord-youtube = {
          #     enable = true;
          #     config = "general";
          #   };
          # }
        ];
      };

    };

}
