{ pkgs, ... }:
{
    services.fwupd.enable = false; # keep service off

    environment.systemPackages = with pkgs; [
        pkgs.fwupd
    ];
}
