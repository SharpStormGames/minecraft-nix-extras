{
 inputs = { nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable"; };
 outputs = { self, nixpkgs }: 
 let
  pkgs = import nixpkgs { system = "x86_64-linux"; };
  lib = import ./lib/lib.nix { inherit pkgs; };
 in {
  packages.x86_64-linux = import ./lib/packages.nix { inherit pkgs lib; };
  lib = lib;
  apps.x86_64-linux.fetch = { type = "app"; program = "${self.packages.x86_64-linux.fetchModrinthMods}/bin/fetch-modrinth.nu"; };
  apps.x86_64-linux.update = { type = "app"; program = "${self.packages.x86_64-linux.updateModrinthMods}/bin/update-modrinth.nu"; };
 };
}
