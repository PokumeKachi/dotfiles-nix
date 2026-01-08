{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    intel-undervolt
  ];

  systemd.services.intel-undervolt = {
    enable = true;
    description = "Intel Undervolt Service";
    after = [ "multi-user.target" ];
    wantedBy = [ "multi-user.target" ];
    serviceConfig = {
      Type = "oneshot";
      ExecStart = "${pkgs.intel-undervolt}/bin/intel-undervolt apply";
      ExecReload = "${pkgs.intel-undervolt}/bin/intel-undervolt apply";
      Restart = "on-failure";
    };
  };

  environment.etc."intel-undervolt.conf".text = ''
    enable no

    # undervolt 0 'CPU' -90
    # undervolt 1 'GPU' -60
    # undervolt 2 'CPU Cache' -90
    # undervolt 3 'System Agent' -60
    # undervolt 4 'Analog I/O' 0

    undervolt 0 'CPU' -50
    undervolt 1 'GPU' -30
    undervolt 2 'CPU Cache' -50
    undervolt 3 'System Agent' 0
    undervolt 4 'Analog I/O' 0

    # undervolt 0 'CPU' 0
    # undervolt 1 'GPU' 0
    # undervolt 2 'CPU Cache' 0
    # undervolt 3 'System Agent' 0
    # undervolt 4 'Analog I/O' 0

    interval 5000

    daemon undervolt:once
    daemon power
    daemon tjoffset
  '';

}
