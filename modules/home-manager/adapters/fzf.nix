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
  config = lib.mkIf (config.everforest.enable && config.programs.fzf.enable) {
    programs.fzf.colors = {
      inherit (raw) fg;
      bg = "-1";
      "list-fg" = raw.fg;
      "list-bg" = "-1";
      "selected-fg" = raw.fg;
      "selected-bg" = raw.bg_visual;
      "preview-fg" = raw.fg;
      "preview-bg" = "-1";
      query = raw.fg;
      "input-fg" = raw.fg;
      "input-bg" = "-1";
      "header-fg" = raw.blue;
      "header-bg" = "-1";
      "footer-fg" = raw.blue;
      "footer-bg" = "-1";
      "current-fg" = raw.fg;
      "current-bg" = raw.bg_visual;
      "alt-bg" = "-1";
      gutter = "-1";
      "alt-gutter" = "-1";
      hl = raw.green;
      "selected-hl" = semantic.accent;
      "current-hl" = semantic.accent;
      ghost = raw.grey1;
      disabled = raw.grey1;
      info = raw.grey1;
      border = raw.grey1;
      "list-border" = raw.grey1;
      "preview-border" = raw.grey1;
      "input-border" = raw.grey1;
      "header-border" = raw.grey1;
      "footer-border" = raw.grey1;
      scrollbar = raw.grey1;
      "preview-scrollbar" = raw.grey1;
      separator = raw.grey1;
      "gap-line" = raw.grey1;
      label = raw.blue;
      "list-label" = raw.blue;
      "preview-label" = raw.blue;
      "input-label" = raw.blue;
      "header-label" = raw.blue;
      "footer-label" = raw.blue;
      prompt = semantic.accent;
      pointer = semantic.accent;
      marker = raw.green;
      spinner = raw.aqua;
    };
  };
}
