{
  description = "figgy flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.05";
    home-manager.url="github:nix-community/home-manager/release-24.05";
    nixpkgs-unstable.url = "nixpkgs/nixos-unstable";
    home-manager.inputs.nixpkgs.follows= "nixpkgs";
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, ... }: 
    let
        system = "x86_64-linux";
        pkgs = nixpkgs.legacyPackages.${system};
        lib = nixpkgs.lib;
        pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
     in{
        nixosConfigurations = {
            nixos = lib.nixosSystem {
                inherit system;
                specialArgs = {inherit pkgs-unstable;};
                modules = [
                ./configuration.nix
                home-manager.nixosModules.home-manager
                {
                    home-manager.useGlobalPkgs = true;
                    home-manager.useUserPackages = true;
                    home-manager.users.USER1 = import ./config/home.nix;
                    home-manager.users.USER2 = import ./config/USER2-home.nix;
                    

                }
                ];
            };

        };
    };    
}
