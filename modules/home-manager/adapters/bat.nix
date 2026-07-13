{
  config,
  everforestTheme,
  lib,
  pkgs,
  ...
}:
let
  themeText = import ../../../lib/render-syntect.nix { inherit (everforestTheme) raw; };
  themeFile = pkgs.writeText "everforest.tmTheme" themeText;
in
{
  config = lib.mkIf (config.everforest.enable && config.programs.bat.enable) {
    programs.bat = {
      config.theme = "everforest";
      themes.everforest = {
        src = themeFile;
        file = null;
      };
    };
  };
}
