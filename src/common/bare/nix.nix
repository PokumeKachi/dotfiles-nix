{ pkgs, ... }:
{
    # nix.package = pkgs.lixPackageSets.stable.lix;
    nix.settings = {
        lazy-trees = true;
        eval-cores = 0;
        experimental-features = [
            "nix-command"
            "flakes"
        ];
    };
}
