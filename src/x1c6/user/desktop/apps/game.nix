{
    lib,
    pkgs,
    ...
}:
{
    environment.systemPackages = with pkgs; [
        inputs.polymc.packages.${pkgs.stdenv.hostPlatform.system}.polymc
        itch
        protonup-qt
        protonup-ng

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
