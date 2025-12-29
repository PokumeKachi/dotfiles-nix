{ pkgs, ... }: {
  # console.font = "${pkgs.terminus_font}/share/consolefonts/ter-i16b.psf.gz";

  # console.font = "${pkgs.terminus_font}/share/consolefonts/ter-v32b.psf.gz";

  console = {
    # font = "${pkgs.kbd}/share/consolefonts/sun12x22.psfu.gz";
    font = "sun12x22";
    keyMap = "us";
    earlySetup = true;
  };

  # systemd.services.systemd-vconsole-setup.unitConfig.After = "local-fs.target";
  systemd.services.systemd-vconsole-setup = {
    # unitConfig.After = [ "local-fs.target" ];
    unitConfig.After = [ "systemd-modules-load.target" ];
    serviceConfig.Restart = "on-failure";
  };

  fonts = {
    enableDefaultPackages = false;

    packages = with pkgs; [
        stix-two
      terminus_font
      kbd

      nerd-fonts.fira-code
      nerd-fonts.jetbrains-mono
      nerd-fonts.comic-shanns-mono

      inter
      dejavu_fonts
      gentium
      liberation_ttf
      # liberation-fonts

      noto-fonts
      noto-fonts-cjk-sans
      twemoji-color-font
      twitter-color-emoji
    ];

    fontconfig = {
      enable = true;
      antialias = true;
      hinting = {
        enable = true;
        # enable = false;
        style = "slight";
      };
      subpixel = {
        rgba = "rgb";
        lcdfilter = "default";
      };
      defaultFonts = {
        monospace = [ "ComicShannsMono Nerd Font Mono" "FiraCode Nerd Font" "JetBrainsMono Nerd Font" ];
        # sansSerif = [ "Noto Sans" ];
        # serif = [ "Noto Serif" ];
        # emoji = [ "Noto Color Emoji" ];
        # monospace = [ "JetBrainsMono Nerd Font" ];  # minimal, nerd, high quality
        sansSerif = [ "Inter" "DejaVu Sans" "Liberation Sans" "Noto Sans" ]; # clean UI font, small size
        serif = [ "Gentium" "DejaVu Serif" "Liberation Serif" ]; # unicode serif, moderate size
        emoji = [ "Twitter Color Emoji" "Twemoji Color Font" "Noto Color Emoji" ];
      };
    };
  };
}
