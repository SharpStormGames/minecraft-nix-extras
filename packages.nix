{pkgs, lib, ... }: {
  sodium = lib.buildMinecraftMod {
    pname = "sodium";
    version = "0.5.11";
    url = "https://cdn.modrinth.com/data/AANobbMI/versions/RncWhTxD/sodium-fabric-0.5.11%2Bmc1.21.jar";
    sha256 = "sha256-O/F4P5CB0oBnRXc07/UvRXm2uDeMB1ZjeEaE9vLxqjc=";
  };
  fabricApi = lib.buildMinecraftMod {
    pname = "fabric-api";
    version = "0.100.6+1.21";
    url = "https://cdn.modrinth.com/data/P7dR8mSH/versions/Y0cpssyN/fabric-api-0.100.6%2B1.21.jar";
    sha256 = "sha256-beV7zOriV9DbX48dWxoFdasX/pTIYiHHrzEM0mhp+Ag=";
  };
}
