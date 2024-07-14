{ pkgs, ... }: {
 fetchModrinthMods = pkgs.stdenvNoCC.mkDerivation {
  name = "fetch-modrinth-mods";
  version = "0.1.0";
  src = ../lib/fetch-modrinth.nu;
  dontUnpack = true;
  installPhase = ''
   mkdir $out/bin -p
   echo "#!${pkgs.nushell}/bin/nu" > $out/bin/fetch-modrinth.nu
   cat $src |tail -n+2>> $out/bin/fetch-modrinth.nu
   chmod +x $out/bin/fetch-modrinth.nu
  '';
 };
 updateModrinthMods = pkgs.stdenvNoCC.mkDerivation {
  name = "update-modrinth-mods";
  version = "0.1.0";
  src = ../lib/update-modrinth.nu;
  dontUnpack = true;
  installPhase = ''
   mkdir $out/bin -p
   echo "#!${pkgs.nushell}/bin/nu" > $out/bin/update-modrinth.nu
   cat $src |tail -n+2>> $out/bin/update-modrinth.nu
   chmod +x $out/bin/update-modrinth.nu
  '';
 };
}
