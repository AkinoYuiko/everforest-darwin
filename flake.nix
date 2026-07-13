{
  description = "Everforest colors for Home Manager on Apple Silicon macOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      ...
    }:
    let
      system = "aarch64-darwin";
      pkgs = import nixpkgs { inherit system; };
      module = import ./modules/home-manager;

      formatter = pkgs.writeShellApplication {
        name = "everforest-format";
        runtimeInputs = [ pkgs.nixfmt ];
        text = ''
          if (( $# > 0 )); then
            exec nixfmt --strict --verify "$@"
          fi

          find . -path './.git' -prune -o -name '*.nix' -print0 \
            | xargs -0 nixfmt --strict --verify
        '';
      };

      source = self;
      qualityChecks = {
        formatting =
          pkgs.runCommand "everforest-formatting"
            {
              nativeBuildInputs = [
                pkgs.findutils
                pkgs.nixfmt
              ];
            }
            ''
              cp -R ${source} source
              chmod -R u+w source
              find source -name '*.nix' -print0 | xargs -0 nixfmt --check --strict --verify
              touch "$out"
            '';

        statix = pkgs.runCommand "everforest-statix" { nativeBuildInputs = [ pkgs.statix ]; } ''
          statix check ${source}
          touch "$out"
        '';

        deadnix = pkgs.runCommand "everforest-deadnix" { nativeBuildInputs = [ pkgs.deadnix ]; } ''
          deadnix --fail ${source}
          touch "$out"
        '';
      };
    in
    {
      homeManagerModules.default = module;

      formatter.${system} = formatter;

      devShells.${system}.default = pkgs.mkShell {
        packages = [
          pkgs.deadnix
          pkgs.nixfmt
          pkgs.statix
        ];
      };

      checks.${system} = qualityChecks // (import ./tests { inherit home-manager pkgs self; });
    };
}
