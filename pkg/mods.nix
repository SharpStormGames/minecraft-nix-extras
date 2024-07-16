{ lib, ... }: {
 
 appleskin = import ./mods/appleskin.nix { inherit lib; };
 architectury-api = import ./mods/architectury-api.nix { inherit lib; };
 cloth-config = import ./mods/cloth-config.nix { inherit lib; };
 continuity = import ./mods/continuity { inherit lib; };
 dynamic-fps = import ./mods/dynamic-fps.nix { inherit lib; };
 entityculling = import ./mods/entityculling.nix { inherit lib; };
 entitytexturefeatures = import ./mods/entitytexturefeatures.nix { inherit lib; };
 entitymodelfeatures = import ./mods/entitymodelfeatures.nix { inherit lib; };
 fabric-api = import ./mods/fabric-api.nix { inherit lib; };
 fabric-kotlin = import ./mods/fabric-kotlin.nix { inherit lib; };
 ferrite-core = import ./mods/ferrite-core.nix { inherit lib; };
 immediatelyfast = import ./mods/immediatelyfast.nix { inherit lib; };
 indium = import ./mods/indium.nix { inherit lib; };
 iris = import ./mods/iris.nix { inherit lib; };
 krypton = import ./mods/krypton.nix { inherit lib; };
 lambdynamiclights = import ./mods/lambdynamiclights.nix { inherit lib; };
 lazydfu = import ./mods/lazydfu.nix { inherit lib; };
 lithium = import ./mods/lithium.nix { inherit lib; };
 modmenu = import ./mods/modmenu.nix { inherit lib; };
 memoryleakfix = import ./mods/memoryleakfix.nix { inherit lib; };
 modernfix = import ./mods/modernfix.nix { inherit lib; };
 moreculling = import ./mods/moreculling.nix { inherit lib; };
 no-chat-reports = import ./mods/no-chat-reports.nix { inherit lib; };
 not-enough-animations = import ./mods/not-enough-animations.nix { inherit lib; };
 phosphor = import ./mods/phosphor.nix { inherit lib; };
 qkl = import ./mods/qkl.nix { inherit lib; };
 qsl = import ./mods/qsl.nix { inherit lib; };
 reeses-sodium-options = import ./mods/reeses-sodium-options.nix { inherit lib; };
 simple-voice-chat = import ./mods/simple-voice-chat.nix { inherit lib; };
 skinlayers3d = import ./mods/3dskinlayers.nix { inherit lib; };
 sodium-extra = import ./mods/sodium-extra.nix { inherit lib; };
 sodium = import ./mods/sodium.nix { inherit lib; };
 xaeros-minimap = import ./mods/xaeros-minimap.nix { inherit lib; };
 xaeros-world-map = import ./mods/xaeros-world-map.nix { inherit lib; };
 yacl = import ./mods/yacl.nix { inherit lib; };
 zoomify = import ./mods/zoomify.nix { inherit lib; };

}
