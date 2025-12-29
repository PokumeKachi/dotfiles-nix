{
    lib,
    ...
}:
let
    # dotPath = ../dot;
    # symlinkPaths = builtins.filter (name: (builtins.readDir dotPath)."${name}" == "directory") (
    #     builtins.attrNames (builtins.readDir dotPath)
    # );
    #
    # symlinkedXdgDot = builtins.map (name: {
    #     inherit name;
    #     value = {
    #         source = "${dotPath}/${name}";
    #     };
    # }) symlinkPaths;

    # allNixFiles = builtins.filter (p: lib.hasSuffix ".nix" p) (lib.fileset.toList ../nix-dot);
    #
    # nativeNixDot = builtins.map (p: import (toString p)) allNixFiles;

    nativeNixDot = builtins.map (p: import (toString p)) (
        builtins.filter (p: lib.hasSuffix ".nix" p) (lib.fileset.toList ../nix-dot)
    );
in
{
    imports = nativeNixDot;

    # environment.etc = builtins.listToAttrs (
    #     map (
    #         { name, value }:
    #         {
    #             name = "xdg/${name}";
    #             value = value;
    #         }
    #     ) symlinkedXdgDot
    # );
}
