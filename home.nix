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
        direnv
        pfetch-rs
        bitwarden-cli
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
        lazygit
        flatpak
        impala
        bluetui

        # Niri utilities / apps referenced by config.kdl
        niri
        koreader
        nwg-displays
        kdePackages.dolphin
        kitty
        qutebrowser
        tofi
        swaylock
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
        EDITOR = "nvim";
        VISUAL = "nvim";
    };

    home.sessionVariablesExtra = ''
        export XDG_DATA_DIRS="$HOME/.nix-profile/share:$XDG_DATA_DIRS"
    '';

    targets.genericLinux = {
        enable = true;
        gpu.enable = true;
    };

}
