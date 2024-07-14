{ lib, ... }: {

 dynamic-fps = import ./mods/dynamic-fps.nix { inherit lib; };
 fabric-api = import ./mods/fabric-api.nix { inherit lib; };
 iris = import ./mods/iris.nix { inherit lib; };
 sodium = import ./mods/sodium.nix { inherit lib; };
 
}