{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  outputs = inputs@{ self, nixpkgs }: 

  let
    pkgs = import nixpkgs { system = "x86_64-linux"; };
    lib = import ./lib.nix { inherit pkgs; };
  in {
    packages.x86_64-linux = import ./packages.nix { inherit pkgs lib; };
    lib = lib;
  };
}
