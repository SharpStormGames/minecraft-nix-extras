{ pkgs, inputs, ... }: {
 buildMinecraftMod = pkgs.lib.makeOverridable ({ pname, version, url, sha512, meta, ... }: 
  pkgs.stdenvNoCC.mkDerivation {
   name = "${pname}-${version}";
   src = pkgs.fetchurl { inherit url sha512; };
   dontUnpack = true;
   preferLocalBuild = true;
   postInstall = ''
    mkdir -p $out/bin
    cp $src $out/bin/
   '';
   inherit meta;
  }
 );
 writeNushellScript = inputs.nix-functions.lib.writeNushellScript;
}
