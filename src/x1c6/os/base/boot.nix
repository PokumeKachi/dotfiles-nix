{
    lib,
    ...
}:
{
    boot = {
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
        resumeDevice = "/dev/disk/by-uuid/aaf232ab-315b-4d52-850f-c625067a4e71";
        kernelParams = [
            "i915.enable_psr=0"
            "intel_pstate=active"
            "mem_sleep_default=deep" # "deep" or "s2idle" (deep for more battery life but slower wake time)
            "acpi_backlight=native"
        ];
        initrd.kernelModules = [ "i915" ];
        kernelModules = lib.mkOverride 1000 ([
            "intel_idle"
            "processor"
            "resume"
            "msr"
            "battery"
            "thermal"
        ]);
    };
}
