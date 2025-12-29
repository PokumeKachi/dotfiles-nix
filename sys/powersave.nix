{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        auto-cpufreq
        tlp
    ];

    services.auto-cpufreq = {
        enable = true;
        settings = {
            charger = {
                # powersave performance
                # governor = "powersave";
                governor = "performance";
                # 0 - 255 (higher = more battery life)
                energy_performance_preference = 160;
                # 0-15 (higher = more battery life)
                energy_perf_bias = 10;

                # scaling_min_freq = 400000;
                # scaling_max_freq = 1600000;

                # always, auto, never
                # turbo = "always";
                turbo = "auto";
            };
            battery = {
                governor = "powersave";
                energy_performance_preference = 160;
                energy_perf_bias = 10;
                # scaling_min_freq =  400000;
                # scaling_max_freq = 2400000;
                # cpu becomes inefficient past 2.4 ghz
                turbo = "auto";

                enable_thresholds = true;
                start_threshold = 60;
                stop_threshold = 80;
            };
        };
    };

    services.tlp = {
        enable = true;
        settings = {
            CPU_ENERGY_PERF_POLICY_ON_AC = "";
            CPU_ENERGY_PERF_POLICY_ON_BAT = "";
            # CPU_SCALING_GOVERNOR_ON_AC = "performance";
            # CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
            # CPU_SCALING_GOVERNOR_ON_BAT = "powersave";
            # CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
            #
            # CPU_MIN_PERF_ON_AC = 20;
            # CPU_MAX_PERF_ON_AC = 100;
            # CPU_MIN_PERF_ON_BAT = 0;
            # CPU_MAX_PERF_ON_BAT = 20;

            WIFI_PWR_ON_AC = "off";
            WIFI_PWR_ON_BAT = "on";

            USB_AUTOSUSPEND = 0;
            USB_AUTOSUSPEND_ON_AC = 0;
            USB_AUTOSUSPEND_ON_BAT = 1;

            SOUND_POWER_SAVE_ON_AC = 0;
            SOUND_POWER_SAVE_ON_BAT = 1;

            # START_CHARGE_THRESH_BAT0 = 50;
            # STOP_CHARGE_THRESH_BAT0 = 80;

            RESTORE_DEVICE_STATE_ON_STARTUP = 1;
            RESTORE_THRESHOLDS_ON_BAT = 1;
            RESTORE_THRESHOLDS_ON_AC = 1;

            DEVICES_TO_DISABLE_ON_BAT = "bluetooth";
            DEVICES_TO_ENABLE_ON_AC = "bluetooth";
        };
    };

    services.thermald.enable = true;
}
