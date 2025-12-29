{ pkgs, ... }:
{
    programs.tmux = {
        enable = true;
        keyMode = "vi";
        # mouse = true;
        shortcut = "j";
        escapeTime = 0;
        baseIndex = 1;
        extraConfig = ''

                        ## START OF MY CONFIG: WORK ON THIS LATER TO FINISH TMUX KEYBINDS

            # unbind normal ctrl-b
            # unbind C-b
            #
            # # ctrl-b enters 'prefix mode'
            # bind-key -n C-b switch-client -T prefix_mode
            #
            # # define common prefix-mode commands
            # bind -T prefix_mode c new-window
            # bind -T prefix_mode % split-window -h
            # bind -T prefix_mode '"' split-window -v
            # bind -T prefix_mode h select-pane -L
            # bind -T prefix_mode j select-pane -D
            # bind -T prefix_mode k select-pane -U
            # bind -T prefix_mode l select-pane -R
            # bind -T prefix_mode & kill-window
            # bind -T prefix_mode q switch-client -T root  # exit prefix mode
            #
            # # auto-exit prefix mode after some time (optional)
            # set -g key-table-timeout 1000

            ## END OF MY CONFIG

                    # unbind C-b
                    # set-option -g prefix C-a
                    # bind-key C-a send-prefix

                    # use vi keys in copy mode

                    set-option -g default-shell ${pkgs.bash}/bin/bash
                    set-option -g default-command ${pkgs.bash}/bin/bash

                    # easier split bindings
                    bind | split-window -h
                    bind - split-window -v

                    # reload config
                    bind r source-file ~/.tmux.conf \; display-message "Config reloaded!"
                    # bind r source-file ~/.config/tmux/tmux.conf \; display-message "Config reloaded!"

                    # set status bar style
                    set -g status-bg black
                    set -g status-fg green
                    set -g xterm-keys on

                  bind h select-pane -L
                  bind j select-pane -D
                  bind k select-pane -U
                  bind l select-pane -R

                    set -g default-terminal "tmux-256color"
                    set -g terminal-overrides ",xterm-256color:Tc"
                    set-option -ga terminal-overrides ",*256col*:Tc"

                    # set -g default-terminal "xterm-kitty"
                    # set -g terminal-overrides ",xterm-kitty:Tc"
                    # set-option -ga terminal-overrides ",*256col*:Tc"

                    set-option -g set-clipboard on

                  set -g status off                 # disable status bar
                  set -g visual-activity off        # disable activity detection
                  set -g visual-bell off
                  set -g monitor-activity off
                  set -g bell-action none

                  set -g focus-events off
                  set -g mouse off

                  set -sg repeat-time 0

                  set -g display-panes-time 500
                  set -g display-time 750

                  set -g status-interval 0         # don't update status bar
                  set -g renumber-windows off
        '';
    };

    # xdg.configFile."terminfo/t/tmux-256color".source =
    #     "${pkgs.ncurses}/share/terminfo/74/tmux-256color";

    environment.etc = {
        "terminfo/t/tmux-256color".source = "${pkgs.ncurses}/share/terminfo/74/tmux-256color";
    };
}
