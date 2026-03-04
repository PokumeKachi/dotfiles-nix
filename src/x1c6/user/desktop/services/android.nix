{ pkgs,... }: {
    services.gvfs.enable = true;
    programs.dconf.enable = true;

    environment.systemPackages = with pkgs; [
        gvfs
        jmtpfs
    ];
}
