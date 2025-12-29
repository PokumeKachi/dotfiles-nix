{ pkgs, ... }:
{
    users.users.kachi = {
        shell = pkgs.bash;
        isNormalUser = true;
        description = "PokumeKachi";
        linger = true;
        extraGroups = [
            "audio"
            "tss"
            "lp"
            "bluetooth"
            "networkmanager"
            "docker"
            "wheel"
            "plocate"
            "dialout"
            "uucp"
            "video"
            "tty"
            "input"
        ];
    };
}
