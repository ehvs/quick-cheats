# Tweak Gnome 42

- Themes at: https://www.gnome-look.org/browse/

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
