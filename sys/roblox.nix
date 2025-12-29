{
    pkgs,
    ...
}:
{
    # programs.steam.extraCompatPackages = with pkgs; [
    #     proton-ge-bin
    # ];

    environment.systemPackages = with pkgs; [
        rojo
        protonup-qt
        protonup-ng
    ];
}
