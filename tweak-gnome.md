
# Gnome 46

- Check version
```
gnome-shell --version
```

## Gnome Text Editor
It uses GTK 5, and the built-in themes are inside `/usr/share/gtksourceview-5/styles`

- Built-in output
```
$ ls /usr/share/gtksourceview-5/styles
Adwaita-dark.xml  Adwaita.xml  classic-dark.xml  classic.xml  cobalt-light.xml  cobalt.xml  kate-dark.xml  kate.xml  oblivion.xml  solarized-dark.xml  solarized-light.xml  styles.rng  tango.xml
```

- Custom themes are placed at `~/.local/share/gtksourceview-5/styles`

## Gnome Cursor

- [Example - Oreo Cursor](https://www.gnome-look.org/p/1360254)

1. Download the .tar.gz file, extract, and copy the folder to `~/.local/share/icons`
1. Use the `Tweaks` tool, and under `Appearance` > `Styles` > `Cursor` , select the new theme.

# Tweak Gnome 42 (Outdated)
## Prerequisites

- folder `~/.config/gtk-4.0/`
- folder `~/.local/share/themes`

## Installing themes
Usually in the theme folder there is a directory named `gtk-4.0`

- Copy/move the following files: gtk.css - gtk-dark.css - assets/ to `~/.config/gtk-4.0/`
```
cp -r assets/ ~/.config/gtk-4.0/
cp *.css  ~/.config/gtk-4.0/
```

**output**
```
$ ls ~/.config/gtk-4.0/
assets  gtk.css  gtk-dark.css  settings.ini  thumbnail.png
```

## Installing Gnome Shell themes
- Copy/move the whole theme folder to `~/.local/share/themes`
```
Eg.
cp -r ~/Downloads/Tokyonight-Light-B-LB/ ~/.local/share/themes/
``` 
**output**
```
ls ~/.local/share/themes/
Tokyonight-Light-B-LB
```
