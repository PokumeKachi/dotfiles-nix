{ pkgs, ... }:
{
    # services.udev.packages = [ pkgs.android-udev-rules ];
    services.udev.extraRules = ''
        SUBSYSTEM=="tty", GROUP="dialout", MODE="0660"
        KERNEL=="tpm[0-9]*", MODE="0660", GROUP="tss", TAG+="systemd"
        ACTION=="add", SUBSYSTEM=="input", ATTR{name}=="TPPS/2 IBM TrackPoint", ATTR{device/drift_time}="25"
    '';
}
