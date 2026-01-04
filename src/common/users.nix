{ pkgs, ... }:
{
    users.users.kachi = {
        shell = pkgs.bash;
        isNormalUser = true;
        description = "PokumeKachi";
        linger = true;
        extraGroups = [
            "audio"
            "lp"
            "bluetooth"
            "networkmanager"
            "docker"
            "wheel"
            "dialout"
            "uucp"
            "video"
            "tty"
            "input"
        ];
    };
}
