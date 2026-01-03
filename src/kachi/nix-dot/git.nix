# { pkgs, ... }:
# {
#     environment.etc = {
#         "gitconfig".text = ''
#             [user]
#               name = PokumeKachi
#               email = pokumekachi@disroot.org
#             [core]
#               symlinks = true
#             [credential]
#               helper = store
#             [push]
#               default = current
#             [init]
#               defaultBranch = main
#         '';
#     };
#
#     environment.systemPackages = with pkgs; [
#         git
#         git-lfs
#     ];
# }
{ config, ... }:
let
    email = "pokumekachi@disroot.org";

    # keysDir = ../assets/ssh-keys;
    # dir = builtins.readDir keysDir;
    # names = builtins.attrNames dir;
    # keyLines =
    #     builtins.concatStringsSep "\n" (
    #         map (
    #             n:
    #             let
    #                 path = builtins.toString keysDir + "/" + n;
    #             in
    #             "${email} ${builtins.readFile path}"
    #         ) names
    #     )
    #     + "\n";

in
{
    programs.git = {
        enable = true;
        lfs.enable = true;

        config = {

            user = {
                name = "PokumeKachi";
                email = email;
            };
            init.defaultBranch = "main";
            credential.helper = "store";
            push.default = "current";
            # gpg.ssh.allowedSignersFile = "${config.home.homeDirectory}/.config/git/allowed_signers";
            core.symlinks = true;
            submodule.recurse = false;
        };

        # signing = {
        #     key = "~/.ssh/id_ed25519.pub";
        #     signByDefault = true;
        #     format = "ssh";
        # };

    };

    # environment.etc."git/allowed_signers".text = keyLines;
}
