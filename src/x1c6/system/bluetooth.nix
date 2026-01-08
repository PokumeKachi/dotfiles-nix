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

    # environment.etc."bluetooth/main.conf".text = ''
    #     [Policy]
    #     AutoEnable=false
    # '';

    users.users.kachi.extraGroups = [ "bluetooth" ];
}
