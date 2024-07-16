{ lib, ... }: {
 
 complementary-reimagined = import ./shaders/complementary-reimagined.nix { inherit lib; };
 rethinking-voxels = import ./shaders/rethinking-voxels.nix { inherit lib; };

}
