{ pkgs, ... }:
{
  # qt = {
  #   enable = true;
  #   platformTheme = "gnome";
  #   style = "adwaita-dark";
  # };

  # environment.systemPackages = with pkgs; [
  #   libsForQt5.qt5ct
  #   adwaita-icon-theme
  #   adwaita-qt
  #   adwaita-qt6
  # ];
  #
  # environment.variables = {
  #   QT_QPA_PLATFORMTHEME = "qt5ct";
  #   QT_STYLE_OVERRIDE = "adwaita-dark";
  # };
  #
  # environment.etc."xdg/qt5ct/qt5ct.conf".text = ''
  #   [Appearance]
  #   style=adwaita-dark
  #   palette=dark
  #   icon_theme=Papirus-Dark
  # '';
}
