{ config, pkgs, ... }: {
  programs.obs-studio = {
    enable = true;
    plugins = with pkgs.obs-studio-plugins; [
      wlrobs
      obs-backgroundremoval
      obs-pipewire-audio-capture
    ];
  };

  # nixpkgs.overlays = [
  #   (final: prev: {
  #     obs-studio = prev.obs-studio.override {
  #       withBrowser = false;
  #     };
  #   })
  # ];
}
