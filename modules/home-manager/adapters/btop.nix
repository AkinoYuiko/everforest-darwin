{
  config,
  everforestTheme,
  lib,
  ...
}:
let
  inherit (everforestTheme) raw semantic;
  theme = ''
    theme[main_bg]=""
    theme[main_fg]="${raw.fg}"
    theme[title]="${raw.fg}"
    theme[hi_fg]="${semantic.accent}"
    theme[selected_bg]="${raw.bg_visual}"
    theme[selected_fg]="${raw.fg}"
    theme[inactive_fg]="${raw.grey1}"
    theme[graph_text]="${raw.grey1}"
    theme[meter_bg]="${raw.bg1}"
    theme[proc_misc]="${raw.green}"
    theme[cpu_box]="${raw.grey1}"
    theme[mem_box]="${raw.grey1}"
    theme[net_box]="${raw.grey1}"
    theme[proc_box]="${raw.grey1}"
    theme[div_line]="${raw.grey1}"
    theme[temp_start]="${raw.red}"
    theme[temp_mid]=""
    theme[temp_end]=""
    theme[cpu_start]="${raw.green}"
    theme[cpu_mid]=""
    theme[cpu_end]=""
    theme[free_start]="${raw.green}"
    theme[free_mid]=""
    theme[free_end]=""
    theme[cached_start]="${raw.aqua}"
    theme[cached_mid]=""
    theme[cached_end]=""
    theme[available_start]="${raw.blue}"
    theme[available_mid]=""
    theme[available_end]=""
    theme[used_start]="${raw.red}"
    theme[used_mid]=""
    theme[used_end]=""
    theme[download_start]="${raw.blue}"
    theme[download_mid]=""
    theme[download_end]=""
    theme[upload_start]="${raw.orange}"
    theme[upload_mid]=""
    theme[upload_end]=""
    theme[process_start]="${raw.purple}"
    theme[process_mid]=""
    theme[process_end]=""
    theme[proc_pause_bg]="${raw.bg_red}"
    theme[proc_follow_bg]="${raw.bg_blue}"
    theme[proc_banner_bg]="${raw.bg_purple}"
    theme[proc_banner_fg]="${raw.fg}"
    theme[followed_bg]="${raw.bg_blue}"
    theme[followed_fg]="${raw.fg}"
  '';
in
{
  config = lib.mkIf (config.everforest.enable && config.programs.btop.enable) {
    programs.btop = {
      settings = {
        color_theme = "everforest";
        theme_background = false;
        proc_gradient = false;
      };
      themes.everforest = theme;
    };
  };
}
