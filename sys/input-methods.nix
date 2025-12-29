{...}:{}

# { inputs, system, pkgs, ... }:
#
# let
#   bamboo = inputs.ibus-bamboo.packages."${stdenv.hostPlatform.system}".default;
# in
# {
#   i18n.inputMethod = {
#     enable = true;
#     type = "ibus";
#     # ibus.engines = [
#     #   # bamboo
#     #   # pkgs.ibus-engines.bamboo
#     # ];
#
#     ibus.engines = with pkgs.ibus-engines; [
#       bamboo
#     ];
#   };
# }
