{
  config,
  everforestTheme,
  lib,
  ...
}:
let
  inherit (everforestTheme) raw semantic;
in
{
  config = lib.mkIf (config.everforest.enable && config.programs.starship.enable) {
    programs.starship.settings = {
      palette = "everforest";
      palettes.everforest = {
        inherit (raw)
          aqua
          blue
          green
          orange
          purple
          red
          yellow
          ;
        inherit (semantic)
          accent
          error
          info
          success
          warning
          ;
        black = raw.grey0;
        cyan = raw.aqua;
        white = raw.fg;
        "bright-black" = raw.grey1;
        "bright-red" = raw.red;
        "bright-green" = raw.green;
        "bright-yellow" = raw.yellow;
        "bright-blue" = raw.blue;
        "bright-purple" = raw.purple;
        "bright-cyan" = raw.aqua;
        "bright-white" = raw.fg;
        muted = raw.grey1;
      };
    };
  };
}
