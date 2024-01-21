#!/bin/bash

sudo pacman -S base-devel btop cmatrix fcitx5-chinese-addons fcitx5-im feh firefox git man-db neofetch noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-nerd-fonts-symbols python-pywal vim xorg-xrandr

mkdir ~/.local/src && cd ~/.local/src
git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/dmenu
git clone https://git.suckless.org/st
cd ~/.local/src/dwm && sudo make clean install
cd ~/.local/src/dmenu && sudo make clean install
cd ~/.local/src/st && sudo make clean install

cp /etc/X11/xinit/xinitrc ~/.xinitrc
vim ~/.xinitrc # xrandr,wal,exec
vim ~/.bashrc # (cat ~/.cache/wal/sequences &)
vim ~/.bash_profile # startx at login
