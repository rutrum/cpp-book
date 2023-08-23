{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  inputs.utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, utils }: 
    utils.lib.eachDefaultSystem(system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      packages.default = pkgs.stdenv.mkDerivation { 
        pname = "cpp-book";
        version = "0.0.1";
        src = ./.;
        nativeBuildInputs = with pkgs; [ mdbook ];
        buildPhase = "mdbook build";
        installPhase = "cp -r book $out";
      };
  
      devShells.default = pkgs.mkShell {
        packages = with pkgs; [ mdbook ];
      };
  });
}
