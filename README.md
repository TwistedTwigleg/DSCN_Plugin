# DSCN_Plugin

This is a plugin I made to allow for importing/exporting DSCN files in Godot.

As of when this was written, the **plugin supports Godot 3.0.6**.
(It should work with Godot 3.1 as well)

This plugin is released under the `MIT` license.
(Credits to [Godot Engine](https://godotengine.org/) for the Godot logo).

### DSCN Feature list

DSCN files have the following features:

* DSCN files have **all the flexibility of normal scene files**.
  * DSCN files embed all of the resources needed for a scene. This means you can export a DSCN file in one project, and import it in another, and it will just work.
  * Almost all  of the default nodes are supported. (Support for custom nodes is not yet implemented). If support for a node is missing, make a new issue and let me know!
  * Scripts, signals, and groups are all saved in the DSCN file as well!
* DSCN files can be **imported and exported during run time from anywhere in the file system**.
  * `.tscn` and `.scn` files can only be opened in the `res://` and `user://` folders. Because `.DSCN` files use Godot's `File` class, you can load scenes from anywhere the `File` class can access!
  * Unfortunately because DSCN files require using the `File` class, you can only import/export DSCN files in a Godot project.
* DSCN files are **extremely portable**.
  * Because DSCN files store a copy of everything needed to run the scene, they are extremely portable.
  * Unfortunately, this comes at the expense of being not quite as lightweight as `.tscn` or `.scn` files. Because DSCN files store one unique copy for each resource used within a scene, DSCN files take up a lot more space. This is because things like images are embedded into the DSCN file, while in `.tscn` files images are just referenced.
  * Also, right now DSCN files have no form of password protection or encryption. This means anything you store in a DSCN file *could* be imported into any project that has the DSCN plugin.
* DSCN files **allow for easy mod support**.
  * Because DSCN files make a copy of every resource needed in the file, adding DSCN support is a great way to allow people to add modifications to your exported Godot projects.
  * This can also make patching/changing scene files easier if your scene files are DSCN files. Then all users will have to do to update/patch the DSCN file is just download a new `.dscn` file and replace the old `.dscn` file.
  * This makes it easier for users to add custom resources to your projects. Unfortunately, because DSCN files use Godot's `File` class to import/export DSCN files, this means users will have to convert their resources in a Godot project before they can be imported.
  * **WARNING**: *because DSCN files make a copy of every reference needed, and are not sand boxed in any way, this means DSCN files could potentially add harmful code/resources/textures to your game. **I am not responsible for ANY damage DSCN files may cause to your projects and those playing them**, you have been warned*

### How to use

COMING SOON!

For right now, check out the included import and export scenes, and/or watch the sneak peek video on [Youtube](https://www.youtube.com/watch?v=zyz2C6wGdlE), which (sort of) shows how to export/import DSCN files.

Right now the DSCN plugin cannot export scenes that have scripts that use `load` or `preload`, because the resource(s) being loaded are not saved into the DSCN file. This means scenes like the KinematicCharacter demo from the Godot demo repository will work fine, but scenes like the 3D Platformer demo will not (without some editing).
  
### Notes

Right now the DSCN plugin is in a proof-of-concept/alpha stage right now. **I would not suggest using the DSCN plugin in production!**

While it can be used in production, right now some essential functionality is missing. Personally I would wait until some of the major flaws in the plugin (like no password protection and no support for custom nodes/resources) are added before trying to use this plugin in a professional project.

Please report any issues, suggestions, and/or bugs to the issue tracker! Feel free to clone and make changes if you want. Hopefully the code is fairly straight forward, though do not hesitate to contact me if you have any questions. You can reach my through my [Twitter](https://twitter.com/TwistedTwigleg), [Facebook](https://www.facebook.com/noah.beard.5680), and email.

**If you want to help support my ability to work on this plugin**, and as a bonus gain access to tutorials I write on [RandomMomentania](https://randommomentania.com/), please support me on [Patreon](https://www.patreon.com/RandomMomentania).


