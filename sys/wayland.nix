{
    lib,
    pkgs,
    ...
}:
{
    environment.systemPackages = with pkgs; [
 
        wayland
        wayland-protocols
        xwayland
        xwayland-run
        xwayland-satellite

        egl-wayland
        libGL
        libGLU

        glib
        glibc
 
     ];
}
