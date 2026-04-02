# Minecraft Modpack — InfrastructureSickos

This repository contains the modpack configuration for the InfrastructureSickos Minecraft server.

## About

A community-focused Minecraft server with a curated modpack. Fair gameplay — same experience for everyone. No pay-to-win perks.

## Repository Structure

```
mods/           # Mod list and metadata (mod name, version, source)
configs/        # Mod configuration files
resourcepacks/  # Optional resource packs
scripts/        # Any KubeJS or CraftTweaker scripts
docs/           # Player-facing documentation
```

## Mod List

See [mods/mods.md](mods/mods.md) for the full list of included mods.

## Managing Mods

This modpack uses [packwiz](https://packwiz.infra.link/) to manage mods. You'll need packwiz installed (`go install github.com/packwiz/packwiz@latest`) to make changes.

### Adding a mod

```bash
# From CurseForge
packwiz curseforge add <slug>

# From Modrinth
packwiz modrinth add <slug>
```

After adding, run `packwiz refresh` to update the index.

### Removing a mod

Delete the mod's `.pw.toml` file from the `mods/` directory, then run:

```bash
packwiz refresh
```

### Building locally

```bash
./build.sh
```

This refreshes the packwiz index and exports a `dist/InfrastructureSickos.mrpack` file ready for distribution.

### CI pipeline

The GitHub Actions workflow (`.github/workflows/build.yml`) runs automatically on every push to `main` and on pull requests. It:

1. Installs Go and packwiz
2. Runs `./build.sh`
3. Uploads `dist/InfrastructureSickos.mrpack` as a workflow artifact named `InfrastructureSickos-mrpack`

To download a build artifact, go to the **Actions** tab in the GitHub repository, select a workflow run, and download from the **Artifacts** section.

## Contributing

Open an issue or pull request if you have suggestions for mods or config changes.
