{ lib, config, ... }:
{
    # github.com/nixos/nixos-hardware hard import
    hardware.trackpoint.device = "TPPS/2 Elan TrackPoint";
    hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
    services.fstrim.enable = lib.mkDefault true;
    services.xserver.dpi = 210;
}
