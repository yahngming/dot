#!/bin/bash
sudo pacman -S --needed aria2 base-devel bc btop cmatrix dictd feh firefox git links mpv neofetch nnn noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra ntp pianobar zsh
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
