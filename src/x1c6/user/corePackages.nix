{
    pkgs,
    ...
}:
{
    programs.nix-ld.enable = true;
    hardware.opentabletdriver.enable = true;

    environment.systemPackages = with pkgs; [
        linuxPackages.kernel.dev

        gcc
        gnumake

        acpi

        brightnessctl
        pavucontrol

        # archiving tools

        gnutar
        p7zip
        unzip
        zip

        # git tools

        gitui
        lazygit
        tig

        # desktop portal
        xdg-utils
        xdg-desktop-portal
        xdg-desktop-portal-gtk
        xdg-desktop-portal-wlr
        xdg-desktop-portal-termfilechooser
    ];
}
