{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    packages.${system}.default = pkgs.stdenv.mkDerivation { 
      pname = "cpp-book";
      version = "0.0.1";
      src = ./.;
      nativeBuildInputs = with pkgs; [ mdbook ];
      buildPhase = "mdbook build";
      installPhase = "cp -r book $out";
    };

    devShells.${system}.default = pkgs.mkShell {
      packages = with pkgs; [ mdbook ];
    };
  };
}
