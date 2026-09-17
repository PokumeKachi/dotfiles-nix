{
    inputs,
    config,
    pkgs,
    ...
}:
{
    home.username = "kachi";
    home.homeDirectory = "/home/kachi";
    home.stateVersion = "26.05";

    home.packages = with pkgs; [
        # CLI / development
        koreader
        direnv
        just
        neovim
        git
        curl
        wget
        ripgrep
        fd
        fzf
        tree
        htop
        btop
        gitui
        flatpak

        # Niri utilities / apps referenced by config.kdl
        niri
        sunsetr
        nwg-displays
        kitty
        qutebrowser
        tofi
        swaylock
        wdisplays
        brightnessctl
        wlogout
        wofi-emoji

        # Session / Wayland
        xwayland-satellite

        # Wallpaper / notifications
        hyprpaper
        mako

        # XDG Desktop Portals
        xdg-desktop-portal
        xdg-desktop-portal-gtk
        xdg-desktop-portal-gnome
        gnome-keyring

        # Other startup applications
        keepassxc

        # Input method
        ibus
    ];

    home.pointerCursor = {
        package = pkgs.gnome-themes-extra;
        name = "Adwaita-dark";
        size = 24;
        gtk.enable = true;
        x11.enable = true;
    };

    programs.direnv = {
        enable = true;
        nix-direnv.enable = true;
    };

    home.sessionVariables = {
        # GBM_BACKENDS_PATH = "${pkgs.mesa}/lib/gbm";
        EDITOR = "nvim";
        VISUAL = "nvim";
    };

    targets.genericLinux = {
        enable = true;
        gpu.enable = true;
    };

}
