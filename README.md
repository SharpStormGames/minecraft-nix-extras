# minecraft-nix-extras

Flake to package minecraft mods, resource packs, and shader packs for declarative management

## Usage

### Using the Flake

Example coming soon

### Adding Projects

<details>
<summary>Adding a Mod from Modrinth</summary>

To add a mod using the script, you will first need to locate the Project ID and Project Slug.

- The Project ID can be found on the mod page at the bottom of the sidebar in the "Technical Information" section

- The Project Slug can be found from the URL of the mod page after /mod/

Using [Fabric API](https://modrinth.com/mod/fabric-api) as an example, the Project ID is `P7dR8mSH` and the slug is `fabric-api`. To add this mod to the list, run:

```sh
nix run .#fetch-mod P7dR8mSH fabric-api
```

This will generate the file `/pkg/mods/fabric-api.nix` with all the available versions.

To package the mod, import it in `/pkg/mods.nix`

```nix
fabric-api = import ./mods/fabric-api.nix { inherit lib; };
```

Finally, Add the mod to the update script, `/lib/mod-update.nu`

```shell

#!/usr/bin/env nu

# ...
^$sh P7dR8mSH fabric-api
# ...

```
</details>

<details>
<summary>Adding a Resource Pack from Modrinth</summary>

To add a resource pack using the script, you will first need to locate the Project ID and Project Slug.

- The Project ID can be found on the mod page at the bottom of the sidebar in the "Technical Information" section

- The Project Slug can be found from the URL of the mod page after /resourcepack/

Using [Faithful 32x](https://modrinth.com/resourcepack/faithful-32x) as an example, the Project ID is `w0TnApzs` and the slug is `faithful-32x`. To add this mod to the list, run:

```sh
nix run .#fetch w0TnApzs faithful-32x
```

This will generate the file `/pkg/resources/faithful-32x.nix` with all the available versions.

To package the mod, import it in `/pkg/resources.nix`

```nix
faithful-32x = import ./resources/faithful-32x.nix { inherit lib; };
```

Finally, Add the mod to the update script, `/lib/resource-update.nu`

```shell

#!/usr/bin/env nu

# ...
^$sh w0TnApzs faithful-32x
# ...

```
</details>

<details>
<summary>Adding a Shader Pack from Modrinth</summary>

To add a shader pack using the script, you will first need to locate the Project ID and Project Slug.

- The Project ID can be found on the mod page at the bottom of the sidebar in the "Technical Information" section

- The Project Slug can be found from the URL of the mod page after /shader/

Using [Complementary Reimagined](https://modrinth.com/shader/complementary-reimagined) as an example, the Project ID is `HVnmMxH1` and the slug is `complementary-reimagined`. To add this mod to the list, run:

```sh
nix run .#fetch HVnmMxH1 complementary-reimagined
```

This will generate the file `/pkg/shaders/complementary-reimagined.nix` with all the available versions.

To package the mod, import it in `/pkg/shaders.nix`

```nix
complementary-reimagined = import ./shaders/complementary-reimagined.nix { inherit lib; };
```

Finally, Add the mod to the update script, `/lib/shader-update.nu`

```shell

#!/usr/bin/env nu

# ...
^$sh HVnmMxH1 complementary-reimagined
# ...

```
</details>