{
    environment = {
        variables = {
            PATH = "$HOME/.local/bin:$HOME/.cargo/bin:$PATH";

            PF_INFO = "ascii title os kernel pkgs shell editor wm de palette host cpu memory uptime";

            _ZO_ECHO = "1";
            _ZO_RESOLVE_SYMLINKS = "1";

        };
        shellAliases = {
            grep = "rg";
            ls = "lsd";
            du = "dua i";
            gpt = "tgpt -m";
            vim = "nvim";
        };
    };
}
