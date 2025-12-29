{ pkgs, ... }: {
  # home.file.".config/qutebrowser/dracula".source =
  #   pkgs.fetchFromGitHub {
  #     owner = "dracula";
  #     repo = "qutebrowser-dracula-theme";
  #     rev = "dc44c0b792a97888e82f037708962fc79a4e7ae0"; # latest as of july 2025
  #     sha256 = "0sfm7k1mbqmqblvb7z4i5r2c36hwh0x5b91kw4c3r7c0apjm8m9f"; # replace if outdated
  #   };
  #
  # programs.qutebrowser = {
  #   enable = true;
  #   settings = {
  #     "content.javascript.clipboard" = "access-paste";
  #   };
  #   extraConfig = ''
  #     # Use 'jk' sequence to escape
  #     config.bind('<Escape>', 'fake-key <Esc>')
  #     config.bind('jk', 'mode-leave', mode='insert')
  #
  #     config.set('input.partial_timeout', 500)
  #
  #     # adblock
  #
  #     config.set("content.blocking.method", "both")
  #     config.set("content.blocking.enabled", True)
  #     config.set("content.blocking.adblock.lists", [
  #         "https://easylist.to/easylist/easylist.txt",
  #         "https://easylist.to/easylist/easyprivacy.txt",
  #         "https://secure.fanboy.co.nz/fanboy-annoyance.txt"
  #     ])
  #
  #     config.bind('p', 'insert-text {clipboard}', mode='normal')
  #
  #     config.bind('<Ctrl-d>', 'scroll-page 0 0.5')
  #     config.bind('<Ctrl-u>', 'scroll-page 0 -0.5')
  #
  #     config.bind('<Ctrl-f>', 'scroll-page 0 1')
  #     config.bind('<Ctrl-b>', 'scroll-page 0 -1')
  #
  #     import dracula.draw
  #
  #     config.load_autoconfig()
  #
  #     dracula.draw.blood(c, {
  #         'spacing': {
  #             'vertical': 6,
  #             'horizontal': 8
  #         }
  #     })
  #   '';
  # };
}
