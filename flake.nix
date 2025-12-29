{
    description = "Ka's nixos configuration";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.11";

        # nix modules

        nix-flatpak.url = "github:gmodena/nix-flatpak?ref=latest";
        stylix.url = "github:nix-community/stylix/release-25.11";
        nur.url = "github:nix-community/NUR";

        # apps

        youtube-tui.url = "github:Siriusmart/youtube-tui";
        way-edges.url = "github:way-edges/way-edges";
        tsui.url = "github:neuralink/tsui";
    };

    outputs =
        {
            self,
            nixpkgs,

            nix-flatpak,
            stylix,
            nur,

            youtube-tui,
            way-edges,
            tsui,
        }@inputs:
        let
            inherit (self) outputs;
            system = "x86_64-linux";
        in
        {
            kachi = nixpkgs.lib.nixosSystem {
                specialArgs = {
                    inherit
                        inputs
                        system

                        youtube-tui
                        way-edges
                        tsui
                        ;
                };
                modules = [
                    nix-flatpak.nixosModules.nix-flatpak
                    stylix.nixosModules.stylix
                    ./main.nix
                    {
                        nixpkgs.overlays = [
                            nur.overlays.default
                            # (import ./overlays)
                        ];

                        imports = builtins.map (p: import (toString p)) (
                            builtins.filter (p: nixpkgs.lib.hasSuffix ".nix" p) (nixpkgs.lib.fileset.toList ./src)
                        );
                    }
                ];
            };
        };
}
