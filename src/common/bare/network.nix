{
    networking = {
        useNetworkd = true;
        wireless.iwd.enable = true;
        firewall.enable = true;

    };

    services.resolved = {
        enable = true;
        domains = [ "~." ];
    };
}
