# dotfiles

### arch post:
```sh
bash <(curl -L https://cdn.jsdelivr.net/gh/yahngming/dot/postinstall.sh) arch
```

### chromeos post:
```sh
bash <(curl -L https://cdn.jsdelivr.net/gh/yahngming/dot/postinstall.sh) chromeos
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
android-tools cmatrix figlet freecad libreoffice-fresh orca-slicer rclone rsync sdrpp-git
```
