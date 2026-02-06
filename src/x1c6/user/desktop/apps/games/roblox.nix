{
    pkgs,
    ...
}:
{
    # programs.steam.extraCompatPackages = with pkgs; [
    #     proton-ge-bin
    # ];

    environment.systemPackages = with pkgs; [
        protonup-qt
        protonup-ng
    ];
}
