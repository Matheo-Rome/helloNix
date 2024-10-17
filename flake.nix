{
  description = "My awesome hello application";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let 
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {

      #We import the actual derivation made in ./hello/default.nix
      packages.${system}.libhello = import ./hello { pkgs = pkgs; };
    };
}
