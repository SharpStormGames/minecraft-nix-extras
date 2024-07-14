{ lib, ... }: {

 dynamic-fps = import ../pkg/mods/dynamic-fps.nix { inherit lib; };
 fabric-api = import ../pkg/mods/fabric-api.nix { inherit lib; };
 iris = import ../pkg/mods/iris.nix { inherit lib; };
 sodium = import ../pkg/mods/sodium.nix { inherit lib; };
 
}