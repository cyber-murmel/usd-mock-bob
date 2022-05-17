{
  pkgs ? import (fetchGit {
    name = "nixos-21.11-2022-05-17";
    url = "https://github.com/nixos/nixpkgs/";
    ref = "refs/heads/nixos-21.11";
    # `git ls-remote https://github.com/nixos/nixpkgs nixos-21.11`
    rev = "8b3398bc7587ebb79f93dfeea1b8c574d3c6dba1";
  }) {}
}:

with pkgs;
mkShell {
  buildInputs = [
    kicad-unstable
    zip
  ];
}
