{
    environment.etc = {
        "xdg/kwalletrc".text = ''
            [Wallet]
            Enable=false
            First Use=false
        '';
    };
    # home.file.".config/kwalletrc".text = ''
    #   [Wallet]
    #   Enable=false
    #   First Use=false
    # '';
}
