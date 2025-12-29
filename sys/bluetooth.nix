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

  services.tlp.enable = true;
  services.tlp.settings = {
    USB_BLACKLIST_BTUSB = "0";
  };
}
