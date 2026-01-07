{ pkgs, ... }:
{
    hardware = {
        firmware = [ pkgs.linux-firmware ];
        enableRedistributableFirmware = true;
    };
}
