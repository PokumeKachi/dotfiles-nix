{
    # systemd.services.samba-smbd.after = [ "network-online.target" ];
    # systemd.services.samba-nmbd.after = [ "network-online.target" ];
    # systemd.services.samba-winbindd.after = [ "network-online.target" ];
    # systemd.services.samba-smbd.wantedBy = [ ];
    # systemd.services.samba-nmbd.wantedBy = [ ];
    # systemd.services.samba-winbindd.wantedBy = [ ];

    # safer: wait for network, not graphical
    # systemd.services.samba-smbd.after = [ "network-online.target" ];
    # systemd.services.samba-nmbd.after = [ "network-online.target" ];
    # systemd.services.samba-winbindd.after = [ "network-online.target" ];
    # systemd.services.samba-smbd.wantedBy = [ ];
    # systemd.services.samba-nmbd.wantedBy = [ ];
    # systemd.services.samba-winbindd.wantedBy = [ ];

    # services.samba = {
    #     enable = true;
    #     openFirewall = true;
    #     settings = {
    #         global = {
    #             "workgroup" = "WORKGROUP";
    #             "server string" = "smb-kachi";
    #             "netbios name" = "kachi";
    #
    #             "security" = "user";
    #             "hosts allow" = "0.0.0.0/0";
    #             "hosts deny" = "";
    #             "guest account" = "nobody";
    #             "map to guest" = "bad user";
    #         };
    #         "public" = {
    #             "path" = "/srv/samba/public";
    #             "browseable" = "yes";
    #             "read only" = "yes";
    #             "guest ok" = "yes";
    #             "create mask" = "0644";
    #             "directory mask" = "0755";
    #         };
    #     };
    # };
    #
    # services.samba-wsdd.enable = true;
    # services.samba-wsdd.openFirewall = true;
    #
    # networking.firewall.enable = true;
    # networking.firewall.allowPing = true;
}
