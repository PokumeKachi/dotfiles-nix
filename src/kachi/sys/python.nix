{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    pipenv
    python3
    jupyter
    xeus-cling
    python3Packages.notebook
    python3Packages.pip
    python3Packages.twilio
    python3Packages.requests
  ];
}
