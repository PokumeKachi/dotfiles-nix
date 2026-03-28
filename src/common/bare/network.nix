{
    networking = {
        useNetworkd = true;
        wireless.iwd = {
            enable = true;
            # settings = {
            #     Settings = {
            #         AddressRandomization = "network";
            #         AddressRandomizationRange = "nic";
            #     };
            # };
        };
        firewall.enable = false;
    };

    services.resolved = {
        enable = true;
        domains = [ "~." ];
    };
}
