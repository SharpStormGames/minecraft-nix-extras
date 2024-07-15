{ lib, ... }: {

 faithful-32x = import ./resources/faithful-32x.nix { inherit lib; };
 fresh-animations = import ./resources/zoomify.nix { inherit lib; };

}