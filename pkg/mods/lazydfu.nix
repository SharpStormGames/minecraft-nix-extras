{ lib, ... }: {
"4SHylIO9" = lib.buildMinecraftMod {
  pname = "0.1.3";
  version = "0.1.3";
  url = "https://cdn.modrinth.com/data/hvFnDODi/versions/0.1.3/lazydfu-0.1.3.jar";
  sha512 = "dc3766352c645f6da92b13000dffa80584ee58093c925c2154eb3c125a2b2f9a3af298202e2658b039c6ee41e81ca9a2e9d4b942561f7085239dd4421e0cce0a";

  meta = {
    gameVersions = [ ''1.19'' ''1.19.1'' ''1.19.2'' ''1.19.3'' ''1.19.4'' ''1.20'' ''1.20.1'' ''1.20.2'' ''1.20.3'' ''1.20.4'' ''1.20.5'' ''1.20.6'' ];
    loaders = [ ''fabric'' ];
  };
};

"C6e265zK" = lib.buildMinecraftMod {
  pname = "0.1.2";
  version = "0.1.2";
  url = "https://cdn.modrinth.com/data/hvFnDODi/versions/0.1.2/lazydfu-0.1.2.jar";
  sha512 = "20b1cd3e62051c7d7498ecdc49912acb918fc4748d469c67c078cc97197289760e64b9339a4d4a03d175f648c8be8601d131776a9a6bdb8832cecdda6fc46498";

  meta = {
    gameVersions = [ ''1.14'' ''1.14.1'' ''1.14.2'' ''1.14.3'' ''1.14.4'' ''1.15'' ''1.15.1'' ''1.15.2'' ''1.16'' ''1.16.1'' ''1.16.2'' ''1.16.3'' ''1.16.4'' ''1.16.5'' ''1.17'' ''1.17.1'' ''1.18'' ''1.18.1'' ''1.18.2'' ];
    loaders = [ ''fabric'' ];
  };
};

"aBDhdWUD" = lib.buildMinecraftMod {
  pname = "0.1.1";
  version = "0.1.1";
  url = "https://cdn.modrinth.com/data/hvFnDODi/versions/0.1.1/lazydfu-0.1.1.jar";
  sha512 = "c677103437d2336dd15415b32f0260db424ad9636994abf586b6ec4fb05358cbf94268af4b6680aebe0b745d63227db166f1d4de2c2f04f15ad4608462d5b16b";

  meta = {
    gameVersions = [ ''1.16.4'' ''1.16.5'' ];
    loaders = [ ''fabric'' ];
  };
};

"8tFjDrHf" = lib.buildMinecraftMod {
  pname = "0.1.0";
  version = "0.1.0";
  url = "https://cdn.modrinth.com/data/hvFnDODi/versions/0.1.0/lazydfu-0.1.0.jar";
  sha512 = "9fc69ba377803b4047206f01e79f07151617eb3fbb2030e13cc87c496b95f5613a9c7f69c89850f149bba229fca22fa5de23c46b2a29af79919ed586c1c736a7";

  meta = {
    gameVersions = [ ''1.16.4'' ];
    loaders = [ ''fabric'' ];
  };
};


}