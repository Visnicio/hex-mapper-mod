Dependencies:
	- Before continuing on creating a custom tileset, please, make sure you have a copy of Godot 4.6 installed in your machine to edit a mod
	- Can be donwloaded here: https://godotengine.org/

# Hex Mapper Modding Guide

Welcome to the modding repository for **An Actual Useful Hex Mapper**. This guide will help you install existing mods or create and export your own custom tilesets.

---

## How to Install a Mod

If you have a `.pck` file for a tileset, follow these steps:

1. **Navigate to the Godot User Data folder** on your machine.
   * **Windows:** `%APPDATA%\Godot\app_userdata\an_actual_useful_hex_mapper`
   * *(Full path: C:\Users\USERNAME\AppData\Roaming\Godot\app_userdata\an_actual_useful_hex_mapper)*
2. **Locate the `tilesets` folder.** (If it doesn't exist, create it). The editor should ideally have created one at first launch
3. **Place the `.pck` file** inside the `/tilesets` directory.
4. **Done!** Launch the app, and the new tiles should be available in the editor.

---

## Mod Structure & Development

To create a mod, your project folder must follow this specific structure to be recognized by the editor:

```text
/my_awesome_mod/
├── /gfx/                          # Graphical assets (PNGs, etc.)
├── mod_tileset_resource.tres      # The Tileset resource used for drawing
├── map_tileset_configuration.tres # Custom resource defining name & tileset link
└── mod_info.tres                  # MANDATORY NAME: Metadata for the loader
```

### Key Components:
* **`mod_info.tres`**: **DO NOT RENAME.** This file is the base metadata the editor uses to identify and load your mod.
* **`map_tileset_configuration.tres`**: A custom resource that defines your tileset configuration (such as the display name and which resource to use).
* **`/gfx`**: Store your textures and sprites here to keep the root directory clean.

---

## Testing Your Mod

You can use the **`/test`** folder included in this repo to preview your tileset before exporting. 

> [!WARNING]  
> **Scale Precision:** The scale in the test environment may not be 100% identical to the live editor. You may need to export your mod and test it inside the actual app to fine-tune the final scale and alignment.

---

## Exporting to `.pck`

When you are ready to share your mod, follow these naming rules strictly:

1. **Folder Consistency:** The name of your **root folder** must match the name of the exported **.pck** file exactly.
   * *Example:* If your folder is `/my_awesome_mod/`, your exported file must be `my_awesome_mod.pck`.
2. **Export Path:** You can check the `/export` folder in this repository to see a sample of the expected final output.

---

### 🛠️ Troubleshooting
If the editor isn't seeing your mod, double-check that:
* The `.pck` is in the `/tilesets` folder, not the root user data folder.
* Your `mod_info.tres` file is named correctly and located at the root of the package.
* Your exported `.pck` filename matches your development folder name.
