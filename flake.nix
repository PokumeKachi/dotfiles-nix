{
    description = "Ka's nixos configuration";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.11";

        # nix modules
        polymc.url = "github:PolyMC/PolyMC";
        nix-flatpak.url = "github:gmodena/nix-flatpak?ref=latest";
        stylix.url = "github:nix-community/stylix/release-25.11";
        nur.url = "github:nix-community/NUR";
        determinate.url = "https://flakehub.com/f/DeterminateSystems/determinate/*";

        # apps
        youtube-tui.url = "github:Siriusmart/youtube-tui";
        way-edges.url = "github:way-edges/way-edges";
        tsui.url = "github:neuralink/tsui";
    };

    outputs =
        inputs@{ self, ... }:
        let
            system = "x86_64-linux";
            lib = inputs.nixpkgs.lib;
            hosts = {
                x1c6 = ./src/x1c6;
                t410 = ./src/t410;
            };

            nixosSystem =
                hostConfig:
                lib.nixosSystem {
                    system = system;
                    specialArgs = {
                        inherit inputs self;
                    };
                    modules = [
                        inputs.nix-flatpak.nixosModules.nix-flatpak
                        inputs.stylix.nixosModules.stylix
                        inputs.determinate.nixosModules.default
                        {
                            # nixpkgs.overlays = [
                            #     inputs.nur.overlays.default
                            # ];

                            imports = [
                                ./src/common/imports.nix
                                (import (hostConfig + "/imports.nix"))
                            ];

                            # imports = builtins.concatLists [
                            #     (getAllNixChildren ./src/common)
                            #     (getAllNixChildren hostConfig)
                            # ];
                        }
                    ];
                };
        in
        lib.mapAttrs (_: path: nixosSystem path) hosts

    ;
}
