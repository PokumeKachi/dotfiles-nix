{ pkgs, ... }:
{
    # environment.etc = {
    #     "bash.bashrc".text = ''
    #         [[ $- != *i* ]] && return
    #
    #         if [[ $EUID -eq 0 ]]; then
    #             PS1='\[\e[1;40;94m\]\u\[\e[1;40;93m\]:\w\[\e[1;91m\]\$\[\e[0m\] '
    #         else
    #             PS1='\[\e[1;32m\]\u\[\e[0m\]:\[\e[1;34m\]\w\[\e[1;35m\]\$\[\e[0m\] '
    #         fi
    #     '';
    # };
    # programs.bash = {
    #     bashrcExtra = ''
    #         [[ $- != *i* ]] && return
    #
    #         if [[ $EUID -eq 0 ]]; then
    #             PS1='\[\e[1;40;94m\]\u\[\e[1;40;93m\]:\w\[\e[1;91m\]\$\[\e[0m\] '
    #         else
    #             PS1='\[\e[1;32m\]\u\[\e[0m\]:\[\e[1;34m\]\w\[\e[1;35m\]\$\[\e[0m\] '
    #         fi
    #
    #         # if [[ -z "$TMUX" ]]; then
    #         # [[ -z "$TMUX" ]] && tmux
    #
    #         # fi
    #     '';
    # };
}
