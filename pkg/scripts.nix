{ pkgs, lib, ... }: {
 fetchModrinthMods = lib.writeNushellScript {
  pname = "fetch-modrinth-mods";
  version = "0.1.0";
  src = ../lib/fetch-modrinth.nu;
  installPath = "/bin/fetch-modrinth.nu";
 };
 updateModrinthMods = lib.writeNushellScript {
  pname = "update-modrinth-mods";
  version = "0.1.0";
  src = ../lib/update-modrinth.nu;
  installPath = "/bin/update-modrinth.nu";
 };
}
