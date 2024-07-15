{ lib, ... }: {
 fetchMod = lib.writeNushellScript {
  pname = "fetch-mods";
  version = "0.1.0";
  src = ../lib/mod-fetch.nu;
  installPath = "/bin/mod-fetch.nu";
 };
 updateMod = lib.writeNushellScript {
  pname = "update-mods";
  version = "0.1.0";
  src = ../lib/mod-update.nu;
  installPath = "/bin/mod-update.nu";
 };
 fetchResource = lib.writeNushellScript {
  pname = "resource-fetch";
  version = "0.1.0";
  src = ../lib/resource-fetch.nu;
  installPath = "/bin/resource-fetch.nu";
 };
 updateResource = lib.writeNushellScript {
  pname = "resource-update";
  version = "0.1.0";
  src = ../lib/resource-update.nu;
  installPath = "/bin/resource-update.nu";
 };
 fetchShader = lib.writeNushellScript {
  pname = "shader-fetch";
  version = "0.1.0";
  src = ../lib/shader-fetch.nu;
  installPath = "/bin/shader-fetch.nu";
 };
 updateShader = lib.writeNushellScript {
  pname = "shader-update";
  version = "0.1.0";
  src = ../lib/shader-update.nu;
  installPath = "/bin/shader-update.nu";
 };
}
