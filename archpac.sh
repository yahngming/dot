#!/bin/bash
sudo pacman -S aria2 bc btop cmatrix dictd feh links mpv neofetch nnn ntp pianobar zsh
sudo pacman -S fcitx5-chinese-addons fcitx5-im noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-nerd-fonts-symbols
sudo pacman -S firefox
sudo pacman -S base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
