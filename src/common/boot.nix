{
    pkgs,
    ...
}:
{
    boot.kernelPackages = pkgs.linuxPackages;
    hardware.firmware = [ pkgs.linux-firmware ];

    boot.kernelParams = [
        "loglevel=4"
        "systemd.show_status=auto"
        "ipv6.disable=0"
    ];

    systemd.services.kexec.enable = true;

    boot.loader = {
        timeout = 1;
        grub.enable = false;
        efi = {
            canTouchEfiVariables = true;
            efiSysMountPoint = "/boot";
        };
        systemd-boot = {
            enable = true;
            configurationLimit = 50;
            editor = false;
        };
    };
}
