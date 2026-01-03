{
    pkgs,
    lib,
    ...
}:
{
    boot = {
        kernelPackages = pkgs.linuxPackages;

        blacklistedKernelModules = [
            "firmware_attributes_class" # dell-only
            "tiny_power_button" # unnecessary
            "cec" # hdmi remote control, not needed on laptops
        ];

        kernel.sysctl = {
            "kernel.core_pattern" = "|/bin/false";
            "kernel.sched_autogroup_enabled" = 1;

            "fs.suid_dumpable" = 0;

            "vm.swappiness" = 10;
            "vm.page-cluster" = 0;
            "vm.vfs_cache_pressure" = 50; # keep inode/dentry cache longer
            "vm.dirty_ratio" = 10; # less dirty data before writeback
            "vm.dirty_background_ratio" = 5; # start background writeback sooner
            "vm.min_free_kbytes" = 65536; # ensure 64mb always free for stability
        };
    };
    hardware.firmware = [ pkgs.linux-firmware ];

    boot.resumeDevice = "/dev/disk/by-uuid/aaf232ab-315b-4d52-850f-c625067a4e71";
    boot.kernelParams = [
        "quiet"
        "loglevel=3"
        # "splash"

        "intel_pstate=active"

        "i915.enable_guc=2"
        "i915.fastboot=1"
        "i915.enable_rc6=1" # gpu sleep states
        "i915.enable_fbc=1" # framebuffer compression
        "i915.enable_psr=2" # panel self refresh (for eDP displays)

        "i915.enable_dc=1" # more aggressive display power saving

        "mem_sleep_default=deep" # "deep" or "s2idle" (deep for more battery life but slower wake time)
        "acpi_backlight=native"

        # "resume=/dev/disk/by-uuid/aaf232ab-315b-4d52-850f-c625067a4e71"
    ];

    boot.initrd.kernelModules = [ "i915" ];
    boot.kernelModules = lib.mkOverride 1000 ([
        "intel_idle"
        "processor"
        "resume"
        "msr"
        "battery"
        "thermal"
    ]);

    boot.loader = {
        timeout = 1;
        grub.enable = false;
        efi = {
            canTouchEfiVariables = false;
            efiSysMountPoint = "/boot";
        };
        systemd-boot = {
            enable = true;
            configurationLimit = 50;
            editor = false;
        };
    };
}
