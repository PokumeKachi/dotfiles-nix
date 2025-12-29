{
    lib,
    pkgs,
    ...
}:
{
    environment.systemPackages = with pkgs; [
        itch

        # (retroarch.withCores (
        #     cores: with cores; [
        #         dolphin
        #         melonds
        #         citra
        #         mgba
        #         snes9x
        #     ]
        # ))
        #
        # dolphin-emu

        gltron
        flare

        superTux
        superTuxKart

        # minecraft

        # prismlauncher
        # libGL
        # cairo
        # xorg.libXxf86vm
        # minecraft
        # appimage-run
        # openjdk17
        # gtk3
        # glib
        # gsettings-desktop-schemas
        # fontconfig
        # freetype
        # stdenv.cc.cc.lib
    ];
}
