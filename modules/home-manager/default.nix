{ config, lib, ... }:
let
  cfg = config.everforest;
  raw = import ../../palette { inherit (cfg) mode contrast; };
  semantic = import ../../lib/semantic.nix raw;
in
{
  imports = [
    ./adapters/bat.nix
    ./adapters/btop.nix
    ./adapters/fzf.nix
    ./adapters/starship.nix
    ./adapters/tmux.nix
  ];

  options.everforest = {
    enable = lib.mkEnableOption "the Everforest color scheme";

    mode = lib.mkOption {
      type = lib.types.enum [
        "dark"
        "light"
      ];
      default = "dark";
      description = "Static Everforest mode.";
    };

    contrast = lib.mkOption {
      type = lib.types.enum [
        "hard"
        "medium"
        "soft"
      ];
      default = "medium";
      description = "Everforest background contrast.";
    };
  };

  config._module.args.everforestTheme = { inherit raw semantic; };
}
