{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        soundwireserver
    ];
}
