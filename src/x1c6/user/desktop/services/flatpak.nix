{
    services.flatpak = {
        enable = true;
        packages = [
            "org.vinegarhq.Vinegar"
            "com.moonlight_stream.Moonlight"
            "ru.yandex.Browser"
            "com.opera.Opera"
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
