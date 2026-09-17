{
    inputs,
    config,
    pkgs,
    ...
}:
{
    imports = [
        inputs.noctalia.homeModules.default
    ];

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
        kitty
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
        korganizer
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
        EDITOR = "nvim";
        VISUAL = "nvim";
    };

    programs.niri = {
        enable = true;

        # Keep your existing KDL config.
        # Adjust this path to wherever you put it in your flake.
        settings = {
            # Put generated/simple settings here if desired.
        };
    };

    programs.noctalia.enable = true;
}
