# dotfiles

### arch post:
```sh
sudo pacman -S git && mkdir -p ~/.local/src && cd ~/.local/src && git clone https://github.com/yahngming/dot && bash ~/.local/src/dot/.local/bin/post arch
```

### chromeos post:
```sh
sudo apt install git && mkdir -p ~/.local/src && cd ~/.local/src && git clone https://github.com/yahngming/dot && bash ~/.local/src/dot/.local/bin/post chromeos
```

### chromeos fonts:
open chrome-untrusted://terminal/html/nassh_preferences_editor.html
Put this in "Custom CSS" field:
```
@font-face {
    font-family: "Symbols Nerd Font";
    src: url("https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/NerdFontsSymbolsOnly/SymbolsNerdFont-Regular.ttf");
    font-weight: normal;
    font-style: normal;
}
```
Prepend this in "Text font family" field:
```
"Symbols Nerd Font",
```

### system proxy:
```sh
curl -Lo ~/.config/clash/config.yaml https://path/to/clash
```

### other applications:
```sh
android-tools cmatrix figlet freecad keepassxc libreoffice-fresh maim man-db mpv nsxiv orca-slicer rsync sdrpp-git xclip
```
