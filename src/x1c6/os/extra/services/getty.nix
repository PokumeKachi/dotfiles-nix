{ self, pkgs, ... }:
{
    # services.getty = {
    # # autologinUser = "kachi";
    # # greetingLine = "this is thinkpad";
    # # greetingLine = builtins.readFile ../../../../assets/startup.txt;
    # greetingLine = builtins.readFile "${self}/assets/startup.txt";
    # # helpLine = "hope ur ready";
    # };

    environment.etc."issue".text = builtins.readFile "${self}/assets/startup.txt";

    # systemd.services.boot-sound = {
    #     enable = true;
    #     description = "bootup sound";
    #     after = [
    #         "alsa-restore.service"
    #         "pulseaudio.service"
    #         "sound.target"
    #     ];
    #     wants = [ "alsa-restore.service" ];
    #     wantedBy = [ "multi-user.target" ];
    #     serviceConfig = {
    #         Type = "oneshot";
    #         ExecStart = "${pkgs.alsa-utils}/bin/aplay -q -D defaul /etc/sound/startup.wav";
    #         # ExecStart = "sox /etc/sound/startup.wav -v 1.0 -t wav - | ${pkgs.alsa-utils}/bin/aplay -D hw:0,0 -";
    #         # ExecStart = "${pkgs.stdenv.shell} -c 'sleep 1;${pkgs.sox}/bin/sox /etc/sound/startup.wav -b 16 -r 48000 -t wav - gain -10 | ${pkgs.alsa-utils}/bin/aplay -D default -f S16_LE'";
    #         RemainAfterExit = false;
    #     };
    # };

    # environment.etc."startup.wav".source = ../../assets/startup.wav;
}
