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
chrome-untrusted://terminal/html/nassh_preferences_editor.html
```
@font-face {
  font-family: "Symbols Nerd Font";
  src: url("https://cdn.jsdelivr.net/gh/ryanoasis/nerd-fonts/patched-fonts/NerdFontsSymbolsOnly/SymbolsNerdFont-Regular.ttf");
  font-weight: normal;
  font-style: normal;
}
```

### system proxy:
```sh
curl -Lo ~/.config/clash/config.yaml https://path/to/clash
```

### other applications:
```sh
android-tools cmatrix figlet freecad keepassxc libreoffice-fresh maim man-db mpv nsxiv orca-slicer rclone rsync sdrpp-git xclip
```
