{
    config,
    pkgs,
    lib,
    ...
}:

let
    USER_ID = 1000;
    USER = "kachi";
    KEY_FILE = "id_ed25519";
in
{
    users.users.${USER}.uid = USER_ID;
    environment.sessionVariables.SSH_AUTH_SOCK = "/run/user/${builtins.toString USER_ID}/ssh-agent";
    systemd.user.services.ssh-add-key = {
        wantedBy = [ "default.target" ];
        after = [ "ssh-agent.service" ];
        serviceConfig = {
            Type = "oneshot";
            ExecStartPre = "${pkgs.coreutils-full}/bin/sleep 1";
            ExecStart = [
                "${pkgs.openssh}/bin/ssh-add ${config.users.users.${USER}.home}/.ssh/${KEY_FILE}"
            ];
            Restart = "on-failure";
            RestartSec = 1;
        };
    };

    services.gnome.gcr-ssh-agent.enable = lib.mkForce false;

    programs.ssh = {
        startAgent = true;
        extraConfig = ''
            Host codeberg.org
              IdentityFile ~/.ssh/id_ed25519
            Host ka.myvnc.com/git
              IdentityFile ~/.ssh/id_ed25519
        '';
    };

    services.openssh.enable = true;
}
