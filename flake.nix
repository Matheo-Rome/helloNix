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
      #Simple devshell to test our lolcat
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = [ pkgs.lolcat ];
      };

      #We import the actual derivation made in ./hello/default.nix
      libhello = import ./hello { pkgs = pkgs; };
    };
}
