{
    networking = {
        hostName = "kachi";
        firewall = {
            allowedTCPPorts = [
                # put all your opened ports here...
                3131
                59010
                1701
            ];
            allowedUDPPorts = [
                59010
            ];
        };
    };
}
