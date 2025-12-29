{
    lib,
    ...
}:
{
    system.stateVersion = "24.11"; # do not edit

    nix.optimise.automatic = true;
    nix.settings = {
        experimental-features = [
            "nix-command"
            "flakes"
        ];
        substituters = [ "https://cache.nixos.org/" ];
        trusted-public-keys = [ "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY=" ];
        max-jobs = "auto";
        cores = 0;
        fallback = true;
    };

    nixpkgs.config.allowUnfree = true;
    nixpkgs.config.allowUnfreePredicate = true;
    nixpkgs.config.allowBroken = true;

    imports = [
        ./base/hardware-configuration.nix
        ./base/nixos-hardware.nix
        ./base/filesystem.nix
        ./base/boot.nix
        ./base/locale.nix
        ./base/users.nix
        ./base/dots.nix
    ]
    ++ builtins.attrValues (
        builtins.mapAttrs (
            name: type: if type == "regular" && lib.hasSuffix ".nix" name then import ./sys/${name} else null
        ) (builtins.readDir ./sys)
    );
}
