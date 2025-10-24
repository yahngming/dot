# dotfiles

## arch
post install
```sh
bash <(curl -L https://raw.githubusercontent.com/yahngming/dot/master/postinstall.sh) arch
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
yay betaflight-configurator doomrunner expresslrs-configurator gyroflow gzdoom minecraft-launcher orca-slicer sdrpp-git subconverter-bin tsukimi-git
yay asciiquarium-transparent-git lavat-git neo-matrix pipes.c terminaltexteffects-git ttysvr # screensavers
yay intel-compute-runtime-legacy-bin # for Thinkpad X1C 2018
yay brother-hl2140 # for Brother HL2140
yay game-devices-udev # for 8BitDo Pro 2
yay new-lg4ff-dkms-git oversteer # for Logitech G29
yay davinci-resolve velocidrone # Download official packages into ~/.cache/yay/$PKGNAME
```

## chromeos
post install
```sh
bash <(curl -L https://raw.githubusercontent.com/yahngming/dot/master/postinstall.sh) chromeos
```
chrome-untrusted://terminal/html/nassh_preferences_editor.html
```
@font-face {
  font-family: "FiraMono Nerd Font";
  src: url("https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/FiraMono/Regular/FiraMonoNerdFont-Regular.otf");
  font-weight: normal;
  font-style: normal;
}
```
