
{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        tpm2-tools
        tpm2-tss

        rng-tools
    ];

    boot.initrd.systemd.tpm2.enable = true;

    security.tpm2 = {
        enable = true;
        abrmd.enable = false;
        pkcs11.enable = true;
        tctiEnvironment.enable = true;
    };

    users.users.kachi.extraGroups = [ "tss" ];

    systemd.services.rngd = {
        description = "Hardware RNG Entropy Gatherer";
        wantedBy = [ "multi-user.target" ];
        serviceConfig = {
            ExecStart = "${pkgs.rng-tools}/bin/rngd -f -r /dev/hwrng";
            Restart = "always";
        };
    };

    systemd.services."systemd-boot-random-seed".enable = false;
    services.haveged.enable = false;
}
