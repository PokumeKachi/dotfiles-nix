{ pkgs, ... }:
{
    services.xserver.videoDrivers = [
        "intel"
        "modesetting"
    ];

    boot.kernelModules = [ "i915" ];

    hardware.graphics = {
        enable = true;
        enable32Bit = true;
        extraPackages = with pkgs; [
            libglvnd
            intel-compute-runtime
            libvdpau-va-gl
            vpl-gpu-rt

            vaapi-intel-hybrid
            libva
            libva-vdpau-driver

            mesa
            mesa-demos
            vulkan-loader

            cairo
            pango

            libsForQt5.qt5.qttools
            libsForQt5.qt5.qtbase
            libsForQt5.qt5.qtwayland
            kdePackages.qtwayland

            glib
            gdk-pixbuf

            xorg.libxcb
            xorg.xcbutil
            xorg.libX11
            xorg.libXcursor
            xorg.libXrandr
            xorg.libXfixes
            xorg.libXi
            xorg.libXinerama
            xorg.libXext
            xorg.libXxf86vm

            libGL
            glfw
            libglvnd

        ];
    };
}
