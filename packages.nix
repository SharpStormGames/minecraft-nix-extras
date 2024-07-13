{pkgs, lib, ... }: {
  fetchModrinthMods = pkgs.stdenvNoCC.mkDerivation {
    name = "fetch-modrinth-mods";
    version = "0.1.0";
    src = ./fetch-modrinth-mods.nu;
    dontUnpack = true;
    installPhase = ''
      mkdir $out/bin -p
      echo "#!${pkgs.nushell}/bin/nu" > $out/bin/fetch-modrinth-mods.nu
      cat $src |tail -n+2>> $out/bin/fetch-modrinth-mods.nu
      chmod +x $out/bin/fetch-modrinth-mods.nu
    '';
  };

  sodium = import ./mods/sodium.nix { inherit lib; };
  iris = import ./mods/iris.nix { inherit lib; };
  dynamic-fps = import ./mods/dynamic-fps.nix { inherit lib; };

  fabricApi = lib.buildMinecraftMod {
    pname = "fabric-api";
    version = "0.100.6+1.21";
    url = "https://cdn.modrinth.com/data/P7dR8mSH/versions/Y0cpssyN/fabric-api-0.100.6%2B1.21.jar";
    sha512 = "sha512-YbwRm5ASLE/wjETjbS7Ji82T7y/TxUnDtMvCE5goOaQay0ky+LhWI33ZQWpUdYWip5pXFLTjZUDNtcZfTCIDgA==";
    meta = {
      gameVersions = [ ''1.21'' ];
      loaders = [ ''fabric'' ];
    };
  };
}
