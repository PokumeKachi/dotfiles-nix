{ pkgs, ... }:
{
    # services.desktopManager.plasma6.enable = true;
    # environment.plasma6.excludePackages = [ pkgs.breeze ]; # optionally remove light theme
    environment.systemPackages = with pkgs; [ kdePackages.dolphin ];
}
