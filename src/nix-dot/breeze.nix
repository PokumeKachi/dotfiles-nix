{ pkgs, ... }:
{
#     home.pointerCursor =
#         {
#                 gtk.enable = true;
#                 x11.enable = true;
#                 name = "capitaine-cursors";
#                 size = 48;
#                 package = pkgs.capitaine-cursors;
#             };
#
#     gtk = {
#         enable = true;
#         colorScheme = "dark";
#         iconTheme = {
#             name = "oomox-gruvbox-dark";
#             package = pkgs.gruvbox-dark-icons-gtk;
#         };
#         cursorTheme = {
#             name = "capitaine-cursors";
#             package = pkgs.capitaine-cursors;
#         };
#         # theme = {
#         #     name = "Awesthetic-dark";
#         # };
#         theme = {
#             name = "breeze-dark";
#             package = pkgs.kdePackages.breeze-gtk;
#         };
#         # iconTheme = {
#         #     name = "breeze";
#         #     package = pkgs.kdePackages.breeze-icons;
#         # };
#         #
#         # cursorTheme = {
#         #     name = "breeze";
#         #     package = pkgs.kdePackages.breeze-gtk;
#         # };
#     };
#
#     qt = {
#         enable = true;
#         platformTheme.name = "kde";
#         style = {
#             name = "breeze-dark";
#             package = pkgs.kdePackages.breeze;
#         };
#     };
}
