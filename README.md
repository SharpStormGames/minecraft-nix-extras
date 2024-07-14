# minecraft-nix-mods

Flake to package minecraft mods for declarative management

## Usage

### Using the Flake

Example coming soon

### Adding a mod from [Modrinth](https://modrinth.com/mods)

To add a mod using the script, you will first need to locate the Project ID and Project Slug.

- The Project ID can be found on the mod page at the bottom of the sidebar in the "Technical Information" section
- The Project Slug can be found from the URL of the mod page after /mod/

Using [Fabric API](https://modrinth.com/mod/fabric-api) as an example, the Project ID is `P7dR8mSH` and the slug is `fabric-api`. To add this mod to the list, run: 

```sh 
nix run .#fetch P7dR8mSH fabric-api 
```

This will generate the file `/pkg/mods/fabric-api.nix` with all the available versions.

To package the mod, import it in `/pkg/mods.nix`

```nix
fabric-api = import ./mods/fabric-api.nix { inherit lib; };
```

Add the mod to the update script, `/lib/update-modrinth.nu`

```shell
#!/usr/bin/env nu

# ...
^$sh P7dR8mSH fabric-api
# ...
```
