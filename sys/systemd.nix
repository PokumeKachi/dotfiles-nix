{
    systemd.coredump.enable = false;

    # systemd.user.extraConfig = ''
    #     Linger=yes
    # '';

    systemd.sleep.extraConfig = ''
        HibernateDelaySec=60m
        SuspendState=mem
    '';

    services.logind.settings.Login.KillUserProcesses = false;

    services.logind.settings.Login.HandlePowerKey = "poweroff";
    services.logind.settings.Login.HandlePowerKeyLongPress = "ignore";

    services.logind.settings.Login.HandleLidSwitch = "suspend-then-hibernate";
    services.logind.settings.Login.HandleLidSwitchExternalPower = "suspend";
    services.logind.settings.Login.HandleLidSwitchDocked = "ignore";

    # services.logind.extraConfig = ''
    #     [Login]
    #     KillUserProcesses=no
    #
    #     HandlePowerKey=poweroff
    #     HandlePowerKeyLongPress=ignore
    #
    #     HandleRebootKey=reboot
    #     HandleRebootKeyLongPress=poweroff
    #
    #     HandleSuspendKey=suspend-then-hibernate
    #     HandleSuspendKeyLongPress=hibernate
    #
    #     HandleHibernateKey=hibernate
    #     HandleHibernateKeyLongPress=ignore
    #
    #     HandleLidSwitch=suspend-then-hibernate
    #     HandleLidSwitchExternalPower=suspend
    #     HandleLidSwitchDocked=ignore
    # '';
}
