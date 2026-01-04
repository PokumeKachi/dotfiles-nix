{
    pkgs,
    lib,
    ...
}:
{
    boot.kernelPackages = pkgs.linuxPackages;
    hardware.firmware = [ pkgs.linux-firmware ];

    boot.kernelParams = [
        # "quiet"
        "loglevel=4"
        "systemd.show_status=auto"
        "ipv6.disable=0"
        "reboot=k"
        # default is acpi, others: k, warm, hard
    ];

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
