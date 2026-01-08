{ lib, ... }:
{
    fileSystems."/".options = [
        "subvol=@"
        "noatime"
        "x-systemd.fsck=no"
        "compress=zstd"
        "discard=async"
        "space_cache=v2"
    ];

    fileSystems."/home" = {
        device = "/dev/disk/by-uuid/5f998a60-db9e-4183-b451-77f378ccf895";
        fsType = "btrfs";
        options = [
            "subvol=@home"
            "noatime"
            "x-systemd.fsck=no"
            "compress=zstd"
            "discard=async"
            "space_cache=v2"
        ];
    };

    fileSystems."/boot".options = lib.mkForce [
        "noatime"
        "nofail"
        "x-systemd.fsck=no"
        "x-systemd.automount"
        "x-systemd.mount-timeout=1s"
        "fmask=0077"
        "dmask=0077"
    ];
}
