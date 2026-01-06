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
            "wheel"
            "dialout"
            "uucp"
            "video"
            "tty"
            "input"
        ];
    };
}
