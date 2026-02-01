{
    networking = {
        useNetworkd = true;
        wireless.iwd.enable = true;
        firewall.enable = false;

    };

    services.resolved = {
        enable = true;
        domains = [ "~." ];
    };
}
