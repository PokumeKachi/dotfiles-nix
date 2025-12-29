{ pkgs, ... }:
{
    stylix.enable = true;

    stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";

    # stylix.image = ../assets/wallpapers/1.jpg;

    stylix.polarity = "dark";

    stylix.fonts = {
        serif = {
            package = pkgs.dejavu_fonts;
            name = "DejaVu Serif";
        };

        sansSerif = {
            package = pkgs.dejavu_fonts;
            name = "DejaVu Sans";
        };

        monospace = {
            package = pkgs.dejavu_fonts;
            name = "DejaVu Sans Mono";
        };

        emoji = {
            package = pkgs.noto-fonts-color-emoji;
            name = "Noto Color Emoji";
        };
    };
}
