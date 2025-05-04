# dotfiles

## arch
post install
```sh
bash <(curl -L https://cdn.jsdelivr.net/gh/yahngming/dot/postinstall.sh) arch
```
proxy config
```sh
git clone https://gist.github.com/$GISTID ~/.local/src/sub
```
pass init
```sh
gpg --import keys.asc
gpg --list-keys
gpg --edit-key $KEYID
gpg> trust
git clone https://$TOKEN@github.com/yahngming/pass ~/.password-store
```
rclone setup
```sh
rclone config
Storage> webdav
url> https://cloud.disroot.org/remote.php/dav/files/myang
user> myang
password: $PASSWORD
```
other packages
```sh
yay -S davinci-resolve game-devices-udev gyroflow intel-compute-runtime-legacy-bin minecraft-launcher orca-slicer sdrpp-git subconverter-bin tsukimi-git
```

## chromeos
post install
```sh
bash <(curl -L https://cdn.jsdelivr.net/gh/yahngming/dot/postinstall.sh) chromeos
```
chrome-untrusted://terminal/html/nassh_preferences_editor.html
```
@font-face {
  font-family: "JetBrainsMono Nerd Font";
  src: url("https://cdn.jsdelivr.net/gh/ryanoasis/nerd-fonts/patched-fonts/JetBrainsMono/NoLigatures/Regular/JetBrainsMonoNLNerdFont-Regular.ttf");
  font-weight: normal;
  font-style: normal;
}
```
