{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        nodePackages.markdownlint-cli2
        nodePackages.prettier
        prettierd
        prettier
    ];
}
