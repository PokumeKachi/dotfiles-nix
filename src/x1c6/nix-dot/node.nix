{ pkgs, config, ... }: {
  # home.packages = with pkgs; [
  #   nodejs
  #   bun
  # ];
  #
  # home.sessionVariables = {
  #   NPM_CONFIG_PREFIX = "${config.home.homeDirectory}/.npm-global";
  #   PATH = "${config.home.homeDirectory}/.npm-global/bin:${pkgs.nodejs}/bin:${pkgs.nodejs}/lib/node_modules/.bin:$PATH";
  # };
}
