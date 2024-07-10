{ pkgs, ... }: {
  buildMinecraftMod = pkgs.lib.makeOverridable ({ pname, version, url, sha256, ... }: 
    pkgs.stdenv.mkDerivation {
      name = "${pname}-${version}";
      src = pkgs.fetchurl { inherit url sha256; };

      dontUnpack = true;
      preferLocalBuild = true;

      postInstall = ''
        mkdir -p $out/bin
        cp $src $out/bin/
      '';
    }
  );
}
