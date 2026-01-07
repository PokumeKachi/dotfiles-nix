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
        inputs:
        let
            system = "x86_64-linux";
            lib = inputs.nixpkgs.lib;
            fs = lib.fileset;

            getAllNixChildren = dir: fs.toList (fs.fileFilter (file: file.hasExt "nix") dir);
            nixosSystem =
                hostConfig:
                lib.nixosSystem {
                    system = system;
                    specialArgs = {
                        inherit inputs;
                    };
                    modules = [
                        inputs.nix-flatpak.nixosModules.nix-flatpak
                        inputs.stylix.nixosModules.stylix
                        {
                            nixpkgs.overlays = [
                                inputs.nur.overlays.default
                            ];

                            imports = builtins.concatLists [
                                (getAllNixChildren ./src/common)
                                (getAllNixChildren hostConfig)
                            ];
                        }
                    ];
                };
        in
        {
            x1c6 = nixosSystem ./src/x1c6;
        };
}
