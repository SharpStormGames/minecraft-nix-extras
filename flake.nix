{
 inputs = { 
  nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  nix-functions = {
   url = "github:probablyrohan/nix-functions";
   inputs.nixpkgs.follows = "nixpkgs";
  };
 };
 outputs = inputs@{ self, nixpkgs, nix-functions }: 
 let
  pkgs = import nixpkgs { system = "x86_64-linux"; };
  lib = import ./lib/lib.nix { inherit pkgs inputs; };
 in {
  packages.x86_64-linux.scripts = import ./pkg/scripts.nix { inherit pkgs lib; };
  packages.x86_64-linux.mods = import ./pkg/mods.nix { inherit pkgs lib; };
  packages.x86_64-linux.shaders = import ./pkg/shaders.nix { inherit pkgs lib; };
  packages.x86_64-linux.resources = import ./pkg/resources.nix { inherit pkgs lib; };
  lib = lib;
  apps.x86_64-linux.fetch-mod = { type = "app"; program = "${self.packages.x86_64-linux.scripts.fetchMod}/bin/mod-fetch.nu"; };
  apps.x86_64-linux.update-mod = { type = "app"; program = "${self.packages.x86_64-linux.scripts.updateMod}/bin/mod-update.nu"; };
  apps.x86_64-linux.fetch-resource = { type = "app"; program = "${self.packages.x86_64-linux.scripts.fetchResource}/bin/resource-fetch.nu"; };
  apps.x86_64-linux.update-resource = { type = "app"; program = "${self.packages.x86_64-linux.scripts.updateResource}/bin/resource-update.nu"; };
  apps.x86_64-linux.fetch-shader = { type = "app"; program = "${self.packages.x86_64-linux.scripts.fetchShader}/bin/shader-fetch.nu"; };
  apps.x86_64-linux.update-shader = { type = "app"; program = "${self.packages.x86_64-linux.scripts.updateShader}/bin/shader-update.nu"; };
 };
}
