{
    services.flatpak = {
        enable = true;
        packages = [
            "org.vinegarhq.Vinegar"
            "org.vinegarhq.Sober"
            "com.moonlight_stream.Moonlight"
        ];
        remotes = [
            {
                name = "flathub";
                location = "https://flathub.org/repo/flathub.flatpakrepo";
            }
        ];
    };
}
