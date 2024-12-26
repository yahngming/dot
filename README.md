# dotfiles

## arch
post install
```sh
bash <(curl -L https://cdn.jsdelivr.net/gh/yahngming/dot/postinstall.sh) arch
```
clash config
```sh
git clone https://gist.github.com/yahngming/$ID ~/.local/src/clash
```
pass init
```sh
gpg --import
gpg --edit-key
pass init
pass git init
pass git remote add
pass git pull
```
other packages
```sh
sudo pacman -S android-tools emby-theater freecad keepassxc rclone rsync
yay -S orca-slicer
yay -S sdrpp-git
```

## chromeos
post install
```sh
bash <(curl -L https://cdn.jsdelivr.net/gh/yahngming/dot/postinstall.sh) chromeos
```
chrome-untrusted://terminal/html/nassh_preferences_editor.html
```
@font-face {
  font-family: "Symbols Nerd Font";
  src: url("https://cdn.jsdelivr.net/gh/ryanoasis/nerd-fonts/patched-fonts/NerdFontsSymbolsOnly/SymbolsNerdFont-Regular.ttf");
  font-weight: normal;
  font-style: normal;
}
```
