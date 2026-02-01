{
    pkgs,
    inputs,
    ...
}:
{
    environment.systemPackages = with pkgs; [
        inputs.polymc.packages.${pkgs.stdenv.hostPlatform.system}.polymc
    ];
}
