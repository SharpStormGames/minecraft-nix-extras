#!/usr/bin/env nu

def main [id, name] {
  let packages = (curl --no-progress-meter https://api.modrinth.com/v2/project/($id)/version
  | from json |
  | each {
    |e| echo $"\"($e.id)\" = lib.buildMinecraftShader {
  pname = \"($e.name)\";
  version = \"($e.version_number | to text)\";
  url = \"($e.files.url.0)\";
  sha512 = \"($e.files.hashes.sha512.0)\";

  meta = {
    gameVersions = [ ($e.game_versions | to text | str replace "\n" `'' ''` -a | append `''` | prepend `''` | str join) ];
  };
};
"} | to text)
  echo $"{ lib, ... }: {
($packages)
}" | save -f $"./pkg/shaders/($name).nix"

}
