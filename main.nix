# {
#     lib,
#     ...
# }:
{
#     imports = [
#         ./base/hardware-configuration.nix
#         ./base/nixos-hardware.nix
#         ./base/filesystem.nix
#         ./base/boot.nix
#         ./base/locale.nix
#         ./base/users.nix
#         ./base/dots.nix
#     ]
#     ++ builtins.attrValues (
#         builtins.mapAttrs (
#             name: type: if type == "regular" && lib.hasSuffix ".nix" name then import ./sys/${name} else null
#         ) (builtins.readDir ./sys)
#     );
}
