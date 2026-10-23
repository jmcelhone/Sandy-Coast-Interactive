# Sandy-Coast-Interactive

## Development
[Godot Engine](https://godotengine.org/download/archive/4.7.2-stable/) **4.7.2-stable** (standard build)
Don't open the project in a different version, since it can rewrite project and scene files and cause merge conflicts.

## Getting Started
1. Clone the repo
2. Open Godot 4.7.2 and click **Import**
3. Select `project.godot` file in root directory
4. Press **F5** to test the project in engine

### Running on other platforms for testing
 
Export templates are required for exporting executables: in Godot, go to **Editor > Manage Export Templates** and download the templates for 4.7.2. Export presets are saved in `export_presets.cfg`.
 
- **Web:** use the **Remote Debug** menu in the editor toolbar to run in your browser. Or export with the Web preset to serve files over local web server.

## Documentation and Best Practices
 
Godot:
- [Best practices index](https://docs.godotengine.org/en/stable/tutorials/best_practices/index.html)
- [GDScript style guide](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html)
- [GDScript static typing](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/static_typing.html)