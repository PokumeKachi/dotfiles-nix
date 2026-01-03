{ pkgs, lib, ... }:
let
    browser = "firefox";
    args = "-new-window ";

    apps = {
        "https://chat.zalo.me/" = "Zalo";
        "https://facebook.com/messages/t/" = "Messenger";
        "https://app.cinny.in/" = "Cinny";

        "https://deepwiki.com/" = "DeepWiki";

        "https://dmoj.ca/" = "DMOJ";
        "https://codeforces.com/" = "CodeForces";

        "https://xgob.in/" = "Pastebin: Gobin";
        "https://dictionary.cambridge.org/dictionary/english/" = "Cambridge Dictionary";
        "https://translate.google.com" = "Google Translate";
        "https://duolingo.com" = "Duolingo";
        "https://trello.com" = "Trello";
        "https://wikipedia.org" = "Wikipedia";
        "https://theguardian.com" = "The Guardian";

        "https://chess.com/play/online/new" = "Chess";

        "https://youtube.com" = "YouTube";
        "https://meet.jit.si/" = "Jitsi Meet";
        "https://mail.proton.me" = "Proton Mail";
        "https://doc.rust-lang.org/stable/book" = "The Rust Book";

        "https://disroot.org/en/services" = "Disroot";
        "https://webmail.disroot.org" = "Disroot Mail";

        "https://search.nixos.org/packages" = "Nix Package Search";
        "https://search.nixos.org/options" = "Nix Option Search";
        "https://flathub.org/en/apps/search" = "Flatpak Package Search";

        "https://myflixerz.to" = "Free Movies";
        "https://www1.123moviesme.online" = "Free Movies 2";

        "https://coddy.tech" = "Coddy for learning to code";
        "https://quickref.me" = "Cheatsheet Library";

        "https://ka.myvnc.com/git" = "kaGit";
        "https://ka.myvnc.com/cloud" = "kaCloud";

        "https://github.com" = "GitHub";
        "https://codeberg.org" = "Codeberg";

        "https://chatgpt.com" = "ChatGPT";
        "https://copilot.microsoft.com/" = "Microsoft Copilot";
        "https://claude.ai/" = "Claude";
        "https://chat.deepseek.com" = "DeepSeek";
        "https://gemini.google.com/app" = "Google Gemini";
        "https://chat.groq.com" = "Groq Chat";
    };

    getName =
        url:
        builtins.replaceStrings [ "/" ] [ " " ] (
            builtins.replaceStrings [ "https://" "http://" ] [ "" "" ] url
        );

in
{
    environment.systemPackages = lib.mapAttrsToList (
        url: name:
        pkgs.makeDesktopItem {
            name = if name != null then name else getName url;
            desktopName = name;
            exec = "${browser} ${args}${url}";
            # icon =etc/nix../../assets/web.png";
            genericName = "web app browser";
            type = "Application";
            terminal = false;
            categories = [ "Network" ];
        }
    ) apps;
}
