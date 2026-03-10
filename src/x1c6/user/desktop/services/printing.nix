{ pkgs, ... }:
{
    services.printing = {
        enable = true;
        listenAddresses = [ "*:631" ];
        allowFrom = [ "all" ];
        browsing = true;
        defaultShared = true;
        openFirewall = true;
    };
    services.printing.drivers = with pkgs; [
        canon-cups-ufr2
    ];
    services.avahi = {
        enable = true;
        nssmdns4 = true;
        openFirewall = true;
    };
}
