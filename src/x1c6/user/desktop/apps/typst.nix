{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        typst
        tinymist

        typstPackages.cetz
        typstPackages.unify
        typstPackages.showybox
        typstPackages.itemize

        typstPackages.fletcher
        typstPackages.lilaq

        typstPackages.touying
        touying

        typstPackages.scripst
        typstPackages.tyniverse

        typstPackages.pesha
        typstPackages.modern-cv
    ];
}
