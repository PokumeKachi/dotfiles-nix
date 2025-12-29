{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    lm_sensors
    thinkfan
  ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "nvme" "usb_storage" "sd_mod" "battery" "thinkpad_acpi" ];
  boot.kernelModules = [ "thinkpad_acpi" "coretemp" ];

  services = {
    thinkfan = {
      enable = true;
      levels = [
        # [ 0 0 25 ]
        # [ 1 25 30 ]
        # [ 2 30 35 ]
        # [ 3 35 40 ]
        # [ 4 40 45 ]
        # [ 5 45 50 ]
        # [ 6 50 55 ]
        # [ 7 55 60 ]
        # [ "level disengaged" 60 255 ]

        # [ 0 0 35 ]
        # [ 1 35 40 ]
        # [ 2 40 45 ]
        # [ 3 45 50 ]
        # [ 4 50 53 ]
        # [ 5 53 55 ]
        # [ 6 55 58 ]
        # [ 7 58 60 ]
        # [ "level disengaged" 60 255 ]

        # [ 0 0 50 ]
        # [ 1 50 52 ]
        # [ 2 52 54 ]
        # [ 3 54 56 ]
        # [ 4 56 58 ]
        # [ 5 58 60 ]
        # [ 6 60 62 ]
        # [ 7 62 65 ]
        # [ "level disengaged" 65 255 ]

        [ 0 0 35 ]
        [ 1 35 50 ]
        [ 2 50 55 ]
        [ 3 55 60 ]
        [ 4 60 65 ]
        [ 5 65 70 ]
        [ 6 70 75 ]
        [ 7 75 80 ]
        [ "level disengaged" 80 255 ]
      ];
    };
  };
}
