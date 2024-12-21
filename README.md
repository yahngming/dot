# dotfiles

### arch post:
```sh
bash <(curl -L https://cdn.jsdelivr.net/gh/yahngming/dot/postinstall.sh) arch
```

### chromeos post:
```sh
bash <(curl -L https://cdn.jsdelivr.net/gh/yahngming/dot/postinstall.sh) chromeos
```

### chromeos font:
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
mkdir -p ~/.config/clash
curl -Lo ~/.config/clash/Country.mmdb https://github.com/Dreamacro/maxmind-geoip/releases/latest/download/Country.mmdb
curl -Lo ~/.config/clash/config.yaml https://path/to/clash
```

### other packages:
```sh
sudo pacman -S android-tools emby-theater freecad keepassxc rclone rsync
yay -S orca-slicer
yay -S sdrpp-git
```
