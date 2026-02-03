{ pkgs, ... }:
{
    environment = {
        systemPackages = with pkgs; [
            bat
            ripgrep
            fd

            dua
            duf

            procs
            delta
            sd

            miller

            btop
        ];
        variables = {
            PATH = "$HOME/.local/bin:$HOME/.cargo/bin:$PATH";

            PF_INFO = "ascii title os kernel pkgs shell editor wm de palette host cpu memory uptime";

            _ZO_ECHO = "1";
            _ZO_RESOLVE_SYMLINKS = "1";

        };
        shellAliases = {
            cat = "bat";
            grep = "rg";
            ls = "eza --icons";
            find = "fd";

            du = "dua i";
            df = "duf";

            gpt = "tgpt -m";
        };
    };
}
