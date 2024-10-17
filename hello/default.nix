{ pkgs }: 

pkgs.stdenv.mkDerivation {
    pname = "hello-gistre"; # Name of the derivation
    version = "1.0.0"; # Version of the derivation

    src = ./.; # get all the files in the directory

    buildPhase = '' 
        make library 
    ''; # Build the libhello.a 
    installPhase = ''
        mkdir -p $out/lib
        mkdir -p $out/include
        make install PREFIX=$out
    ''; # Install the library
}
