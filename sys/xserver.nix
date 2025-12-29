{ pkgs, ... }:
{
    services.libinput.enable = true;

    # services.desktopManager.cosmic.enable = true;
    services.xserver = {
        enable = true;
        # libinput.enable = true;
        displayManager = {

            startx.enable = true;
            lightdm.enable = false;
        };
        windowManager.i3 = {
            enable = true;
            extraPackages = with pkgs; [
                dmenu # application launcher most people use
                i3status # gives you the default i3 status bar
                i3lock # default i3 screen locker
            ];
        };
    };

    # environment.systemPackages = with pkgs; [
    #   xorg.xinit
    #   xorg.xorgserver
    #   xorg.xrandr
    #   xorg.xrdb
    #   xorg.xsetroot
    #   xorg.xmodmap
    #   xorg.xprop
    #   xorg.xdpyinfo
    #   xorg.xev
    #   xorg.xwininfo
    #   xorg.xhost
    #   xorg.xauth
    #   xorg.setxkbmap
    #   xorg.xbacklight
    #   xorg.xinput
    #
    #   i3
    #   # optional tools:
    #   xterm
    #   feh
    #   dmenu
    # ];

    # services.xserver = {
    #   enable = true;
    #   displayManager.lightdm.enable = true;
    #   windowManager.i3.enable = true; # or your DE
    #   windowManager.i3.extraPackages = with pkgs; [
    #     dmenu i3status i3blocks  # optional
    #   ];
    # };
}
