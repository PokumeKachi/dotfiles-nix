{
    programs.foot = {
        enable = true;
        settings = {
            main = {
                # font="JetBrainsMono Nerd Font:size=13";
                # font="FiraCode Nerd Font:size=13";

                # font = "ComicShannsMono Nerd Font Mono:size=15,Noto Sans:size=15";

                # font = "ComicShannsMono Nerd Font Mono:size=15";
                font = "ComicShannsMono Nerd Font Mono:size=15,STIX Two Math:size=15";
                # font = "ComicShannsMono Nerd Font Mono:size=15,Noto Sans Math:size=15";
                # font = "ComicShannsMono Nerd Font Mono:size=15,STIX Two Math:size=15,Noto Sans Math:size=15,Twitter Color Emoji,Twemoji Color Font,Noto Color Emoji";

                # font-fallback = "";
            };

            # mouse = {
            #   selection-target = "primary-clipboard";
            # };

            colors = {
                foreground = "c6d0f5";
                background = "202426";
                # background = "303436";
                cursor = "232634 f2d5cf";

                regular0 = "51576d";
                regular1 = "e78284";
                regular2 = "a6d189";
                regular3 = "e5c890";
                regular4 = "8caaee";
                regular5 = "f4b8e4";
                regular6 = "81c8be";
                regular7 = "b5bfe2";

                bright0 = "626880";
                bright1 = "e78284";
                bright2 = "a6d189";
                bright3 = "e5c890";
                bright4 = "8caaee";
                bright5 = "f4b8e4";
                bright6 = "81c8be";
                bright7 = "a5adce";

                "16" = "ef9f76";
                "17" = "f2d5cf";

                selection-foreground = "c6d0f5";
                selection-background = "4f5369";

                search-box-no-match = "232634 e78284";
                search-box-match = "c6d0f5 414559";

                jump-labels = "232634 ef9f76";
                urls = "8caaee";
            };
        };
    };
    # programs.kitty = {
    #     enable = true;
    #     font = {
    #         # name = "FiraCode Nerd Font, JetBrains Mono Nerd Font, monospace";
    #         # package = pkgs.nerd-fonts.jetbrains-mono;
    #         # name = "JetBrainsMono Nerd Font";
    #         name = "ComicShannsMono Nerd Font Mono";
    #         size = 15;
    #     };
    #     themeFile = "Catppuccin-Mocha";
    #     shellIntegration.mode = "no-cursor";
    #
    #     settings = {
    #         enable_audio_bell = "no";
    #         enable_paste_from_clipboard = "yes";
    #
    #         cursor_trail = 1;
    #         cursor_trail_decay = "0.1 0.4";
    #         # cursor_trail_start_threshold = 2;
    #         cursor_trail_start_threshold = 0;
    #
    #         # background_opacity = "0.5";
    #         # background_blur = 5;
    #
    #         # foreground = "#c6d0f5";
    #         # background = "#202426";
    #         # selection_foreground = "#c6d0f5";
    #         # selection_background = "#4f5369";
    #         # url_color = "#8caaee";
    #         # cursor = "#f2d5cf";
    #         # cursor_shape = "block";
    #         # # font_family = "JetBrainsMono Nerd Font";
    #         # # italic_font = "auto";
    #         #
    #         # cursor_text_color = "#232634";
    #         #
    #         # color0 = "#51576d"; # black
    #         # color1 = "#e78284"; # red
    #         # color2 = "#a6d189"; # green
    #         # color3 = "#e5c890"; # yellow
    #         # color4 = "#8caaee"; # blue
    #         # color5 = "#f4b8e4"; # magenta
    #         # color6 = "#81c8be"; # cyan
    #         # color7 = "#b5bfe2"; # white
    #         #
    #         # color8 = "#626880"; # bright black
    #         # color9 = "#e78284"; # bright red
    #         # color10 = "#a6d189"; # bright green
    #         # color11 = "#e5c890"; # bright yellow
    #         # color12 = "#8caaee"; # bright blue
    #         # color13 = "#f4b8e4"; # bright magenta
    #         # color14 = "#81c8be"; # bright cyan
    #         # color15 = "#a5adce"; # bright white
    #         #
    #         # color16 = "#ef9f76"; # extended color 16
    #         # color17 = "#f2d5cf"; # extended color 17
    #     };
    # };
    # programs.wezterm = {
    #   enable = true;
    #   colorSchemes.theme = {
    #     ansi = [
    #       "#51576d"
    #       "#e78284"
    #       "#a6d189"
    #       "#e5c890"
    #       "#8caaee"
    #       "#f4b8e4"
    #       "#81c8be"
    #       "#b5bfe2"
    #     ];
    #     brights = [
    #       "#626880"
    #       "#e78284"
    #       "#a6d189"
    #       "#e5c890"
    #       "#8caaee"
    #       "#f4b8e4"
    #       "#81c8be"
    #       "#a5adce"
    #     ];
    #     indexed = {
    #       "16" = "#ef9f76";
    #       "17" = "#f2d5cf";
    #     };
    #     foreground = "#c6d0f5";
    #     background = "#202426";
    #     cursor_bg = "#f2d5cf";
    #     cursor_border = "#f2d5cf";
    #     cursor_fg = "#232634";
    #     selection_bg = "#4f5369";
    #     selection_fg = "#c6d0f5";
    #     compose_cursor = "#f2d5cf";
    #   };
    #   extraConfig = ''
    #             local wezterm = require("wezterm")
    #
    #             return {
    #               font = wezterm.font("ComicShannsMono Nerd Font Mono"),
    #     hide_tab_bar_if_only_one_tab = true,
    #
    #     window_padding = {
    #         left = 0,
    #         right = 0,
    #         top = 0,
    #         bottom = 0,
    #       },
    #
    #                 color_scheme = "theme",
    #               font_size = 15.0,
    #             }
    #   '';
    # };

}
