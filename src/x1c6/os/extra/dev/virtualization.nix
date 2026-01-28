{ pkgs, ... }:
{
    virtualisation = {
        libvirtd.enable = true;

        podman = {
            enable = true;
            dockerCompat = true;
        };
    };

    environment.systemPackages = [ pkgs.distrobox ];

    programs.virt-manager.enable = true;
}
