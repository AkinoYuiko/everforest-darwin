{ mode, contrast }:
let
  data = import ./data.nix;
in
data.backgrounds.${mode}.${contrast} // data.foregrounds.${mode}
