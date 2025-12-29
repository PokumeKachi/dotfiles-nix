{
    pkgs,
    ...
}:
{
    environment.systemPackages = with pkgs; [
        fuzzel
    ];
}
# {
#   programs.fuzzel = {
#     enable = true;
#     settings = {
#       main = {
#         dpi-aware = "no";
#         font = "FiraCode:size=16,JetBrainsMono:size=16";
#       };
#     };
#   };
# }
