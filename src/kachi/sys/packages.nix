{
    pkgs,
    inputs,
    ...
}:
{
    environment.systemPackages = with pkgs; [
        aegisub
        just-lsp
        nnn
        librsvg
        imagemagick
        kitty
        kitty-img

        page
        dig
        cachix
        freecad
        solvespace

        inputs.tsui.packages.${pkgs.stdenv.hostPlatform.system}.tsui
        nh

        noisetorch
        deskreen
        inputs.youtube-tui.defaultPackage.${pkgs.stdenv.hostPlatform.system}
        parsec-bin
        lighttpd
        litemdview
        geteltorito
        nvme-cli
        efibootmgr
        prettierd
        shfmt

        keepassxc
        inkscape
        blender
        planify
        progress-tracker

        dart
        wpsoffice
        black
        wildcard
        # go-task
        hexpatch
        ghex
        imhex
        okteta
        hexdino
        tinycc

        thunderbird
        mdbook
        river-classic
        wl-clicker
        tgpt

        zk
        xournalpp
        nixd
        nixfmt-rfc-style
        gimp
        discord
        pebble
        mold
        ltex-ls
        alsa-utils
        cage
        ncurses
        st
        dmenu
        dwm
        arandr
        kdePackages.kwalletmanager
        kdePackages.merkuro
        kdePackages.korganizer
        openssl
        curl
        elmPackages.elm
        ani-cli
        mov-cli
        # film-central
        audacity
        obsidian
        w3m
        imlib2
        busybox
        iputils
        youtube-tui
        nmap
        inotify-tools
        ninja
        meson
        watchexec
        cargo-watch
        typst
        wdisplays
        ffmpeg

        file
        swayidle
        smartmontools
        hdparm
        systemd
        qpdf
        imv
        vlc
        powerstat
        stress-ng
        sysstat
        pkg-config
        taskwarrior3
        taskwarrior-tui
        swww
        wtype
        jq
        github-desktop
        nwg-drawer
        # electrum
        swaybg
        aseprite
        otf2bdf
        bdf2psf
        libinput
        iputils
        pciutils

        killall
        lsof
        wev
        usbutils
        zed-editor

        arduino-cli
        electron
        dbus

        gammastep
        bemenu
        upower
        nemo
        tofi

        dmidecode

        arduino-ide
        clang
        clang-tools
        # man pages use too much build time
        man-pages
        man-pages-posix
        kdePackages.kdenlive
        # way-edges
        # ibus-engines.bamboo
        inputs.way-edges.packages.${pkgs.stdenv.hostPlatform.system}.default
        easyeffects
        ironbar

        nvtopPackages.intel

        wofi
        dmenu
        wofi-emoji
        swaylock
        wlogout

        vscodium
        neovim
        tree-sitter
        nfs-utils

        # terminal tools
        bat
        fd
        ripgrep

        fzf

        lsd
        eza
        dua
        procs

        newt

        libnotify
        mako

        mpv
        libreoffice
        onlyoffice-desktopeditors

        wget
        btop
        wmenu
        fastfetch
        pfetch-rs
        wl-clipboard

        gcc
        gnumake

        acpi

        brightnessctl
        pavucontrol

        htmx-lsp

        # archiving tools

        gnutar
        p7zip
        unzip
        zip

        # browser

        tor-browser
        tor
        firefox
        ungoogled-chromium

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

        # zig
        zig

        # rust

        rustc
        cargo
        rust-analyzer
        rustfmt
        clippy

        # lua

        lua
        love
        luajit
        luajitPackages.luaposix

        # documentation

        lynx
        tldr

        # docs reader

        zathura
        glow

        # go

        go

        # communication

        weechat-unwrapped

        # cli fun

        cmatrix
        cava

        # markdown

        texlab
    ];
}
