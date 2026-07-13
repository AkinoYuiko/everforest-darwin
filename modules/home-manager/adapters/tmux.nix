{
  config,
  everforestTheme,
  lib,
  ...
}:
let
  inherit (everforestTheme) raw;
  paletteVariables = lib.concatStringsSep "\n" (
    lib.mapAttrsToList (name: value: "set -g @everforest_${name} '${value}'") raw
  );
  colors = ''
    # Everforest Tmux colors
    ${paletteVariables}

    set -g status-style "fg=#{@everforest_fg},bg=#{@everforest_bg_dim},default"
    set -g mode-style "fg=#{@everforest_purple},bg=#{@everforest_bg_visual}"

    set -g window-status-style "fg=#{@everforest_grey1},bg=#{@everforest_bg0}"
    set -g window-status-current-style "fg=#{@everforest_fg},bg=#{@everforest_bg_green}"
    set -g window-status-activity-style "fg=#{@everforest_yellow},bg=#{@everforest_bg1}"
    set -g window-status-bell-style "fg=#{@everforest_bg0},bg=#{@everforest_statusline3}"

    set -g pane-border-style "fg=#{@everforest_grey1}"
    set -g pane-active-border-style "fg=#{@everforest_blue}"
    set -g display-panes-colour "${raw.orange}"
    set -g display-panes-active-colour "${raw.blue}"

    set -g message-style "fg=#{@everforest_statusline3},bg=#{@everforest_bg_dim}"
    set -g message-command-style "fg=#{@everforest_fg},bg=#{@everforest_bg1}"
    set -g clock-mode-colour "${raw.blue}"
  '';
in
{
  config = lib.mkIf (config.everforest.enable && config.programs.tmux.enable) {
    programs.tmux.extraConfig = lib.mkAfter colors;
  };
}
