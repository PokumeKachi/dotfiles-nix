{
    description = "Kachi home config";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

        home-manager = {
            url = "github:nix-community/home-manager/release-26.05";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs =
        {
            nixpkgs,
            home-manager,
            ...
        }@inputs:
        let
            system = "x86_64-linux";

            pkgs = import nixpkgs {
                inherit system;
            };

            homeConfig =
                home-manager.lib.homeManagerConfiguration {
                    inherit pkgs;

                    extraSpecialArgs = {
                        inherit inputs;
                    };

                    modules = [
                        ./home.nix
                    ];
                };
        in
        {
            homeConfigurations.kachi = homeConfig;

            apps.${system}.switch = {
                type = "app";
                program = "${homeConfig.activationPackage}/activate";
            };
        };
}
