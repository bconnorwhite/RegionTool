# Region Tool

This is a tool for converting between Minecraft alpha worlds and the Minecraft region format.

It is derived from this [post by Scaevolus](https://www.minecraftforum.net/forums/mapping-and-modding-java-edition/minecraft-mods/mods-discussion/1346703-mod-mcregion-v5-optimized-saves-1-2_02), with a minor modification to work with the official Minecraft region format. Specifically, it uses files with the `.mcr` extension, rather than `.data` from the original tool.

## Formats

### Alpha Level Format

The [alpha level format](https://minecraft.wiki/w/Java_Edition_Alpha_level_format) was introduced in Infdev 20100327, through Beta 1.2_02. Your world is in this format if it has a `level.dat` file in the root directory, along side a bunch of directories labeled with a few letters and numbers (ex: `1h`).

### Region Format

The [region format](https://minecraft.wiki/w/Region_file_format) was introduced in Beta 1.3, and is used until 12w07a (a snapshot for 1.2.1). Your world is in this format if it has a `region` folder, with a bunch of files named `r.x.z.mcr` (ex: `r.0.0.mcr`).

## Building

To build, run `build.sh` in the root directory. This will create a `build` directory, and output the class files and jar.

## Usage

To use, run `run.sh` in the root directory. This will run the jar, and output the usage.

```
regionTool: converts between chunks and regions
usage: java -jar RegionTool.jar [un]pack <world directory> [target directory]
```

### Pack

Pack converts a world from the alpha level format to the region format. It takes two arguments: the world directory, and the target directory. The target directory is optional, and defaults to the world directory.

### Unpack

Unpack converts a world from the region format to the alpha level format. It takes two arguments: the world directory, and the target directory. The target directory is optional, and defaults to the world directory.
