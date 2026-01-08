{
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
