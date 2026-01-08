{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        ranger
    ];
    programs.yazi = {
        enable = true;
        settings = {
            yazi = {
                opener = {
                    open = [
                        {
                            # run = "xdg-open \"$@\" >/dev/null 2>&1 &";
                            run = "rifle \"$@\"";
                            desc = "Open";
                            # for = "linux";
                        }
                    ];
                };
            };
        };
    };
}
