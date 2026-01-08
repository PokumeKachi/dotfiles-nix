{ pkgs, ... }:
{
    services.xserver.videoDrivers = [
        "intel"
        "modesetting"
    ];

    boot.kernelParams = [ "i915.force_probe=46d1,i915.enable_guc=3" ];

    boot.kernelModules = [ "i915" ];

    hardware = {
        enableAllFirmware = true;
        intel-gpu-tools.enable = true;
        graphics = {
            enable = true;
            enable32Bit = true;
            extraPackages = with pkgs; [
                libglvnd
                intel-compute-runtime
                libvdpau-va-gl

                vpl-gpu-rt
                vaapi-intel-hybrid
                libva-vdpau-driver
                intel-media-driver
                intel-vaapi-driver

                libva
                libva-utils

                x264
                x265
                openh264

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
    };

    environment.sessionVariables.LIBVA_DRIVER_NAME = "iHD";

    hardware.cpu.intel.updateMicrocode = true;
}
