# dotfiles

### post install:
```sh
sudo pacman -S git && mkdir -p ~/.local/src && cd ~/.local/src && git clone https://github.com/yahngming/dot && bash ~/.local/src/dot/.local/bin/post
```

### system proxy:
```sh
curl -Lo ~/.config/clash/config.yaml https://path/to/clash
```

### other applications:
```sh
yay -S android-tools cmatrix figlet freecad keepassxc libreoffice-fresh maim man-db mpv nsxiv orca-slicer rsync sdrpp-git xclip
```

### chrome os:
```sh
sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update
sudo apt install bat eza fastfetch fd-find git vim lolcat
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.local/src/fzf && ~/.local/src/fzf/install
ln -s $(which fdfind) ~/.local/bin/fd
