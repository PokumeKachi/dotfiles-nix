{ pkgs, lib, ... }:
{
    systemd.services."systemd-networkd-wait-online".enable = lib.mkForce false;

    services.flatpak.enable = true;

    # systemd.user.services.battery-monitor = {
    #     description = "Battery monitor";
    #     serviceConfig = {
    #         ExecStart = "/run/current-system/sw/bin/make -C /home/kachi battery";
    #         Environment = "PATH=/run/current-system/sw/bin";
    #     };
    #     wantedBy = [ "default.target" ];
    # };

    services.earlyoom = {
        enable = true;

        freeMemThreshold = 5;
        freeSwapThreshold = 5;
        extraArgs = [
            "--prefer"
            "heavy_app"
        ];
    };

    # systemd.services.rebuild-before-shutdown = {
    #     before = [ "shutdown.target" ];
    #     wantedBy = [ "shutdown.target" ];
    #     serviceConfig = {
    #         Type = "oneshot";
    #         ExecStart = ''
    #             ${pkgs.nixos-rebuild}/bin/nixos-rebuild switch --fast --flake ".?submodules=1#nixos"
    #         '';
    #     };
    # };

    # systemd.user.services.idle-lock = {
    #   description = "Idle lock";
    #   serviceConfig = {
    #     ExecStart = "/run/current-system/sw/bin/make -C /home/kachi 202020";
    #     Environment = "PATH=/run/current-system/sw/bin";
    #   };
    #   wantedBy = [ "default.target" ];
    # };

    systemd.user.services.idle-lock = {
        description = "Idle lock";
        after = [ "graphical-session.target" ];
        partOf = [ "graphical-session.target" ];
        wantedBy = [ "graphical-session.target" ];
        serviceConfig = {
            # ExecStart = "/run/current-system/sw/bin/make -C /home/kachi 202020";
            # ExecStart = ''
            #   /bin/sh -c '
            #     export WAYLAND_DISPLAY="$$WAYLAND_DISPLAY"
            #     : "$${WAYLAND_DISPLAY:=wayland-0}"
            #     while true; do
            #       swaylock
            #       sleep 1200
            #     done
            #   '
            # '';
            Environment = "PATH=/run/current-system/sw/bin";
        };
    };

    # we put slow services down here

    # systemd.services.tlp = {
    #   enable = true;
    #   wantedBy = [ "multi-user.target" ];
    #   after = [ "network-online.target" ];
    # wants = [ "network-online.target" ];
    #   serviceConfig = {
    #     Type = lib.mkForce "simple";
    #     TimeoutStartSec = 0;
    #   };
    # };

    # systemd.services.tlp = {
    #   enable = true;
    #   wantedBy = [ "multi-user.target" ];
    #   after = [ "default.target" ];
    # };
}
