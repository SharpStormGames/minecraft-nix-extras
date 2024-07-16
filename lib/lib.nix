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
 buildMinecraftPack = pkgs.lib.makeOverridable ({ pname, version, url, sha512, meta, ... }: 
 pkgs.stdenvNoCC.mkDerivation {
  name = "${pname}-${version}";
  src = pkgs.fetchurl { inherit url sha512; };
  dontUnpack = true;
  preferLocalBuild = true;
  buildInputs = [ pkgs.unzip ];
  postInstall = ''
   mkdir -p $out
   cp $src $out/pack.zip
   cd $out
   unzip $out/pack.zip
  '';
  inherit meta;
 }
 );
 buildMinecraftShader = pkgs.lib.makeOverridable ({ pname, version, url, sha512, meta, ... }: 
  pkgs.stdenvNoCC.mkDerivation {
   name = "${pname}-${version}";
   src = pkgs.fetchurl { inherit url sha512; };
   dontUnpack = true;
   preferLocalBuild = true;
   postInstall = ''
    cp $src $out
   '';
   inherit meta;
  }
 );
 writeNushellScript = inputs.nix-functions.lib.writeNushellScript;
}
