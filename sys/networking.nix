{ pkgs, ... }:
{
    networking = {
        hostName = "kachi";
        useNetworkd = true;
        useDHCP = false;
        nameservers = [
            "1.1.1.1"
            "8.8.4.4"
            "8.8.8.8"
        ];
        wireless.iwd.enable = true;
        firewall = {
            enable = true;
            allowedTCPPorts = [ 3131 1701 ];
        };
        extraHosts = "100.92.71.122 ka.com";

        # nftables.enable = true;
    };

    services.resolved = {
        enable = true;
        domains = [ "~." ];
        dnssec = "true";
        dnsovertls = "true";
    };

    systemd.network.networks."25-wlan" = {
        matchConfig.Name = "wlan0";
        networkConfig.DHCP = "yes";
        dhcpConfig.UseDNS = false;
    };

    environment.etc."resolv.conf".source = "/run/systemd/resolve/stub-resolv.conf";
}
