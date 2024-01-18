#!/bin/bash
sudo pacman -S --needed base-devel bc btop feh firefox git neofetch nnn zsh
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
