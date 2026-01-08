{
    pkgs,
    ...
}:

{
    environment.systemPackages = with pkgs; [
        kdePackages.breeze
        kdePackages.breeze-gtk
        kdePackages.breeze-icons

    ];
}
