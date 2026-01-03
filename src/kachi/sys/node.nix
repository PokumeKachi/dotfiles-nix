{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    nodejs
    nodePackages.markdownlint-cli2
    nodePackages.prettier
  ];
}
