{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        pwvucontrol
        wiremix
    ];

    hardware.alsa.enablePersistence = true;
    security.rtkit.enable = true;
    services.pulseaudio.enable = false;
    services.pipewire = {
        enable = true;

        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
        jack.enable = true;

        extraConfig.pipewire = {
            "01-disable-boost.conf" = {
                context.properties = {
                    audio.volume-boost = "false";
                    channelmix.max-volume = "1.0";
                    "default.clock.rate" = 44100;
                    "default.clock.allowed-rates" = [
                        44100
                        48000
                    ];
                };
            };
        };

        wireplumber = {
            enable = true;
            extraConfig = {
                "10-autoswitch" = {
                    "monitor.alsa.rules" = [
                        {
                            matches = [ { "node.name" = "~alsa_output.*"; } ];
                            actions = {
                                update-props = {
                                    "alsa.auto-switch" = true;
                                };
                            };
                        }
                    ];
                };
            };
        };
    };
}
