{
    networking = {
        useDHCP = true;

        nameservers = [
            "1.1.1.1"
            "1.0.0.1"
            "8.8.8.8"
            "8.8.4.4"
        ];
    };

    services.resolved = {
        dnssec = "true";
        dnsovertls = "true";
    };
}
