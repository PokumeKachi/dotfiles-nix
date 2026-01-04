{
    nix.optimise.automatic = true;
    nix.settings = {
        experimental-features = [
            "nix-command"
            "flakes"
        ];
        substituters = [
            "https://cache.nixos.org/"
            # "https://cachix.org"
            "https://nix-community.cachix.org"
        ];
        trusted-public-keys = [
            "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
            "cachix.cachix.org-1:eWNHQldwUO7G2VkjpnjDbWwy4KQ/HNxht7H4SSoMckM="
            "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
        ];
        max-jobs = "auto";
        cores = 0;
        fallback = true;
    };
}
