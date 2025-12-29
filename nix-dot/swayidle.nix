{
  # systemd.user.services.swayidle = {
  #   enable = true;
  #   description = "Idle manager for Wayland";
  #   wants = ["graphical-session.target"];
  #   after = ["graphical-session.target"];
  #   serviceConfig = {
  #     ExecStart = ''
  #       swayidle \
  #         # timeout 60 'systemctl suspend' \
  #         # timeout 60 'swaylock -f'
  #         timeout 60 'systemctl suspend'
  #       '';
  #     Restart = "always";
  #   };
  # };
}
