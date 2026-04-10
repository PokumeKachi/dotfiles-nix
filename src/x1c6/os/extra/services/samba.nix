{
    services.samba = {
        enable = true;
        openFirewall = true;
        settings = {
            global = {
                "workgroup" = "WORKGROUP";
                "server string" = "smb-kachi";
                "netbios name" = "kachi";
                "security" = "user";
                "hosts allow" = "192.168.1.0/24"; # change to your subnet
                "guest account" = "nobody";
                "map to guest" = "bad user";
            };
            "public" = {
                "path" = "/srv/samba/public";
                "browseable" = "yes";
                "read only" = "yes";
                "guest ok" = "yes";
                "create mask" = "0644";
                "directory mask" = "0755";
            };
            "public_writable" = {
                # new writable share for guests
                "path" = "/srv/samba/public_writable";
                "browseable" = "yes";
                "read only" = "no";
                "guest ok" = "yes";
                "create mask" = "0666";
                "directory mask" = "0777";
            };
        };
    };

    services.samba-wsdd.enable = true;
    services.samba-wsdd.openFirewall = true;
}
