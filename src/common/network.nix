{
    networking = {
        useNetworkd = true;
        useDHCP = true;
        nameservers = [
            "1.1.1.1"
            "1.0.0.1"
            "8.8.8.8"
            "8.8.4.4"
        ];
        wireless.iwd.enable = true;
        firewall.enable = true;
    };

    services.resolved = {
        enable = true;
        domains = [ "~." ];
        dnssec = "true";
        dnsovertls = "true";
    };
}
