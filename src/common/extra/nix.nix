{ inputs, pkgs, ... }:
{
    nix = {
        optimise.automatic = true;
        settings = {
            substituters = [
                "https://cache.nixos.org/"
                "https://nix-community.cachix.org"
                "https://install.determinate.systems"
            ];
            trusted-public-keys = [
                "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
                "cachix.cachix.org-1:eWNHQldwUO7G2VkjpnjDbWwy4KQ/HNxht7H4SSoMckM="
                "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
                "cache.flakehub.com-3:hJuILl5sVK4iKm86JzgdXW12Y2Hwd5G07qKtHTOcDCM="
            ];
            max-jobs = 64;
            cores = 0;
            fallback = true;
        };
        # extraOptions = ''
        #     eval-cores = 0
        #     extra-experimental-features = parallel-eval
        # '';
    };

    documentation.enable = false;

    environment.systemPackages = with pkgs; [
        nix-fast-build
        inputs.nix-evaluator-stats.packages.${pkgs.stdenv.hostPlatform.system}.default
    ];
}
