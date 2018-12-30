{ pkgs ? import <nixpkgs> {} }:
pkgs.python3Packages.buildPythonPackage rec {
  pname = "jefferson";
  version = "0.3";
  propagatedBuildInputs = with pkgs.python3Packages; [
    (callPackage ./cstruct.nix {})
    (callPackage ./python-lzo.nix {})
  ];
  src = ./.;
  shellHook =''
    HISTFILE="${toString ./.}/.histfile"
  '' ;
}
