# dotfiles

### arch post:
```sh
sudo pacman -S git && mkdir -p ~/.local/src && cd ~/.local/src && git clone https://github.com/yahngming/dot && bash ~/.local/src/dot/.local/bin/post arch
```

### chromeos post:
```sh
sudo apt install git && mkdir -p ~/.local/src && cd ~/.local/src && git clone https://github.com/yahngming/dot && bash ~/.local/src/dot/.local/bin/post chromeos
```

### system proxy:
```sh
curl -Lo ~/.config/clash/config.yaml https://path/to/clash
```

### other applications:
```sh
yay -S android-tools cmatrix figlet freecad keepassxc libreoffice-fresh maim man-db mpv nsxiv orca-slicer rsync sdrpp-git xclip
```
