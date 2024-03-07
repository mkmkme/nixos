{
  description = "Personal flake for mkmkme";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    home-manager,
    ...
  }:
    let
      user = "ecko";
      system = "x86_64-linux";
    in {
      nixosConfigurations = {
        delta = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./system/configuration.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.ecko = import ./config/home.nix;
              home-manager.extraSpecialArgs = {inherit inputs self user;};
            }
          ];
        };
      };
  };
}
