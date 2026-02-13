{
    services.flatpak = {
        enable = true;
        packages = [
            "net.audiorelay.AudioRelay"
        ];
        remotes = [
            {
                name = "flathub";
                location = "https://flathub.org/repo/flathub.flatpakrepo";
            }
        ];
        update.onActivation = true;
    };
}
