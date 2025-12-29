{ pkgs, ... }:
{
    programs.waybar = {
        enable = true;
        # settings = {
        #     mainBar = {
        #         layer = "top";
        #         position = "top";
        #         height = 32;
        #         spacing = 8;
        #         margin-top = 0;
        #         margin-right = 0;
        #         margin-left = 0;
        #         margin-bottom = 0;
        #
        #         modules-left = [
        #             "niri/workspaces"
        #             "niri/window"
        #         ];
        #         modules-center = [ "clock" ];
        #         modules-right = [
        #             "network"
        #             "pulseaudio"
        #             "battery"
        #             "tray"
        #         ];
        #
        #         "niri/workspaces" = {
        #             disable-scroll = true;
        #             format = "{icon}";
        #             format-icons = {
        #                 # "1" = "1";
        #                 # "2" = "2";
        #                 # "3" = "3";
        #                 # "4" = "4";
        #                 # "5" = "5";
        #                 active = "●";
        #                 default = "○";
        #             };
        #         };
        #
        #         "niri/window" = {
        #             format = "{title}";
        #             max-length = 50;
        #             separate-outputs = true;
        #         };
        #
        #         clock = {
        #             format = "{:%a %b %d  %I:%M %p}";
        #             tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        #         };
        #
        #         network = {
        #             format-wifi = "{icon}";
        #             format-ethernet = "󰈀";
        #             format-disconnected = "󰖪";
        #             format-icons = [
        #                 "󰤯"
        #                 "󰤟"
        #                 "󰤢"
        #                 "󰤥"
        #                 "󰤨"
        #             ];
        #             tooltip-format-wifi = "{essid} ({signalStrength}%)";
        #             tooltip-format-ethernet = "{ifname}: {ipaddr}";
        #         };
        #
        #         pulseaudio = {
        #             format = "{icon}";
        #             format-muted = "󰖁";
        #             format-icons = {
        #                 default = [
        #                     "󰕿"
        #                     "󰖀"
        #                     "󰕾"
        #                 ];
        #             };
        #             tooltip-format = "Volume: {volume}%";
        #             on-click = "pavucontrol";
        #         };
        #
        #         battery = {
        #             format = "{icon}";
        #             format-icons = [
        #                 "󰁺"
        #                 "󰁻"
        #                 "󰁼"
        #                 "󰁽"
        #                 "󰁾"
        #                 "󰁿"
        #                 "󰂀"
        #                 "󰂁"
        #                 "󰂂"
        #                 "󰁹"
        #             ];
        #             format-charging = "󰂄";
        #             tooltip-format = "{capacity}% - {time}";
        #         };
        #
        #         tray = {
        #             icon-size = 16;
        #             spacing = 8;
        #         };
        #     };
        # };

        # style = ''
        #             /* macOS-style transparent bar */
        #             * {
        #               border: none;
        #               border-radius: 0;
        #               font-family: "Inter", -apple-system, system-ui, sans-serif;
        #               font-size: 13px;
        #               font-weight: 500;
        #               min-height: 0;
        #             }
        #
        #             window#waybar {
        #               background: transparent;
        #               border-radius: 0px;
        #               border: 0px solid rgba(255, 255, 255, 0.1);
        #               box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
        #             }
        #
        #     #workspaces {
        #               background: transparent;
        #               margin: 0;
        #               padding: 0;
        #             }
        #
        #     #workspaces button {
        #               padding: 4px 6px;
        #               margin: 0 2px;
        #               background: transparent;
        #               color: rgba(255, 255, 255, 0.6);
        #               border-radius: 6px;
        #               transition: all 0.2s ease;
        #             }
        #
        #     #workspaces button:hover {
        #               background: rgba(255, 255, 255, 0.1);
        #               color: rgba(255, 255, 255, 0.9);
        #             }
        #
        #     #workspaces button.active {
        #               background: rgba(255, 255, 255, 0.2);
        #               color: white;
        #             }
        #
        #     #window {
        #               background: transparent;
        #               color: rgba(255, 255, 255, 0.8);
        #               font-weight: 400;
        #               margin-left: 12px;
        #             }
        #
        #     #clock {
        #               background: transparent;
        #               color: white;
        #               font-weight: 500;
        #               letter-spacing: 0.5px;
        #             }
        #
        #     #network, #pulseaudio, #battery, #tray {
        #               background: transparent;
        #               color: rgba(255, 255, 255, 0.9);
        #               padding: 0 8px;
        #               margin: 0 2px;
        #               border-radius: 6px;
        #               transition: all 0.2s ease;
        #             }
        #
        #     #network:hover, #pulseaudio:hover, #battery:hover {
        #               background: rgba(255, 255, 255, 0.1);
        #             }
        #
        #     #tray {
        #               padding: 0 4px;
        #             }
        #
        #             tooltip {
        #               background: rgba(0, 0, 0, 0.8);
        #               border-radius: 8px;
        #               border: 1px solid rgba(255, 255, 255, 0.1);
        #               color: white;
        #             }
        #
        #             tooltip label {
        #               color: white;
        #               padding: 8px 12px;
        #             }
        # '';
    };
}
