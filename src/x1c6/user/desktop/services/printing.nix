{ pkgs, ... }:
{
    services.printing = {
        enable = true;
        openFirewall = true;
        browsing = true;
        drivers = with pkgs; [
            canon-cups-ufr2
            canon-capt
            (pkgs.stdenv.mkDerivation {
                pname = "canon6030-driver";
                version = "1";

                src = ./canon6030;
                dontBuild = true;

                nativeBuildInputs = [ pkgs.autoPatchelfHook ];
                buildInputs = [ pkgs.cups ];

                installPhase = ''
                    mkdir -p $out/share/cups/model
                    mkdir -p $out/lib/cups/filter

                    cp CNRCUPSLBP6030ZNK.ppd $out/share/cups/model/
                    install -Dm755 rastertosfp $out/lib/cups/filter/rastertosfp
                '';
            })
        ];
    };

    services.avahi = {
        enable = true;
        nssmdns4 = true;
        openFirewall = true;
    };

    users.users.kachi.extraGroups = [
        "lp"
        "lpadmin"
    ];
}
