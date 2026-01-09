{
    hardware.bluetooth = {
        enable = true;

        settings = {
            General = {
                ControllerMode = "dual";
            };
        };
    };

    services.blueman.enable = true;

    users.users.kachi.extraGroups = [ "bluetooth" ];
}
