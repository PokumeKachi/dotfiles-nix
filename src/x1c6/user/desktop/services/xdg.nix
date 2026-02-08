{ pkgs, ... }:
let
    portals = with pkgs; [
        xdg-desktop-portal
        xdg-desktop-portal-gtk
        xdg-desktop-portal-wlr
        xdg-desktop-portal-termfilechooser
    ];
in
{
    xdg.portal = {
        enable = true;
        wlr.enable = true;
        configPackages = portals;
        extraPortals = portals;
        config = {
            common.default = [
                "wlr"
                "gtk"
            ];
        };
        xdgOpenUsePortal = true;
    };

    xdg.mime.enable = true;
    xdg.mime.defaultApplications = {
        "x-scheme-handler/http" = "firefox.desktop";
        "x-scheme-handler/https" = "firefox.desktop";
        "text/html" = "firefox.desktop";
        "image/webp" = "imv.desktop";

        "x-scheme-handler/about" = "firefox.desktop";
        "x-scheme-handler/unknown" = "firefox.desktop";

        "x-scheme-handler/roblox-studio" = "org.vinegarhq.Vinegar.studio.desktop";
        "x-scheme-handler/roblox-studio-auth" = "org.vinegarhq.Vinegar.studio.desktop";
        "application/x-roblox-rbxl" = "org.vinegarhq.Vinegar.studio.desktop";
        "application/x-roblox-rbxlx" = "org.vinegarhq.Vinegar.studio.desktop";
    };
}
