{
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
}
