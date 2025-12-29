{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [ mako ];
    # services.mako = {
    #   enable = true;
    #
    #   settings = {
    #     font = "Fira Code 10";
    #     background-color = "#1e1e2e";
    #     text-color = "#cdd6f4";
    #     border-color = "#89b4fa";
    #     border-size = 2;
    #     border-radius = 8;
    #     padding = "10";
    #     default-timeout = 5000;
    #   };
    # };
}
