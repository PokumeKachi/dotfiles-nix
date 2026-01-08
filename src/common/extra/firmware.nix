{ pkgs, ... }:
{
    hardware = {
        firmware = [ pkgs.linux-firmware ];
        enableRedistributableFirmware = true;
    };

    services.fwupd.enable = true;
}
