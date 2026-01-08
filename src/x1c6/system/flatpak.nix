{
    services.flatpak = {
        enable = true;
        packages = [
            "org.vinegarhq.Vinegar"
            "org.vinegarhq.Sober"
            "com.moonlight_stream.Moonlight"
            "ru.yandex.Browser"
            "com.opera.Opera"
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
