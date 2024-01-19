#!/bin/bash
sudo pacman -S --needed aria2 base-devel bc btop cmatrix dictd feh firefox git links mpv neofetch nnn ntp pianobar zsh
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
