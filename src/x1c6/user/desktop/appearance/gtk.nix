{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
 
        gtk2
        gtk3
        gtk4
 
     ];
    # gtk = {
    #     enable = true;
    #
    #     theme = {
    #         package = pkgs.gnome-themes-extra;
    #         name = "Adwaita-dark"; # base name, has both light & dark
    #     };
    #
    #     iconTheme = {
    #         package = pkgs.gnome-themes-extra;
    #         name = "Adwaita-dark"; # base name, has both light & dark
    #     };
    #
    #     cursorTheme = {
    #         package = pkgs.gnome-themes-extra;
    #         name = "Adwaita-dark"; # base name, has both light & dark
    #     };
    #
    #     # colorScheme = "dark";
    #
    #     # theme = {
    #     #     name = "Adwaita-dark";
    #     #     package = pkgs.gnome-themes-extra;
    #     # };
    #     # settings = {
    #     #   gtk-application-prefer-dark-theme = true;
    #     # };
    # };
    #
    # home.pointerCursor = {
    #     name = "Adwaita-dark";
    #     package = pkgs.adwaita-icon-theme;
    #     size = 24;
    # };
}
