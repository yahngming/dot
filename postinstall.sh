#!/bin/sh

arch() {
	sudo pacman -Syu aerc atool base-devel bat bc btop clash cmus eza fastfetch fcitx5-chinese-addons fcitx5-im fd ffmpegthumbnailer firefox fzf git git-delta glow gvim handlr imlib2 jq less lf libxss lolcat maim man-db mpv noto-fonts noto-fonts-cjk noto-fonts-emoji nsxiv openssh pass perl-image-exiftool polkit poppler python-pywal steam translate-shell trash-cli ttf-nerd-fonts-symbols ueberzug xcape xclip xcompmgr xdo xorg-xrandr xssstate xwallpaper zoxide
	mkdir -p ~/.local/src
	cd ~/.local/src && git clone https://github.com/yahngming/dwm && cd ~/.local/src/dwm && sudo make clean install
	cd ~/.local/src && git clone https://github.com/yahngming/dmenu && cd ~/.local/src/dmenu && sudo make clean install
	cd ~/.local/src && git clone https://github.com/yahngming/st && cd ~/.local/src/st && sudo make clean install
	cd ~/.local/src && git clone https://github.com/yahngming/slock && cd ~/.local/src/slock && sudo make clean install
	cd ~/.local/src && git clone https://github.com/yahngming/herbe && cd ~/.local/src/herbe && sudo make clean install
	cd ~/.local/src && git clone https://aur.archlinux.org/yay.git && cd ~/.local/src/yay && makepkg -si
	yay -S ctpv
 	yay -S newsraft
	mkdir -p ~/.config/clash && cd ~/.config/clash && curl -LO https://github.com/Dreamacro/maxmind-geoip/releases/latest/download/Country.mmdb
	mkdir -p ~/Pictures/wallpapers && cd ~/Pictures/wallpapers && curl -LO https://dt.iki.fi/stuff/forums/arch/ARCH_bubblessvg_v2_5120px.png
	gsettings set org.gnome.system.proxy.ftp host '127.0.0.1'
	gsettings set org.gnome.system.proxy.ftp port 7890
	gsettings set org.gnome.system.proxy.http host '127.0.0.1'
	gsettings set org.gnome.system.proxy.http port 7890
	gsettings set org.gnome.system.proxy.https host '127.0.0.1'
	gsettings set org.gnome.system.proxy.https port 7890
	gsettings set org.gnome.system.proxy.socks host '127.0.0.1'
	gsettings set org.gnome.system.proxy.socks port 7891
	cd ~/.local/src && git clone https://github.com/yahngming/dot && bash ~/.local/src/dot/.local/bin/dot
}

chromeos() {
	sudo apt install git
	mkdir -p ~/.local/src
	sudo dpkg --add-architecture i386
	sudo mkdir -pm755 /etc/apt/keyrings
	wget -qO- https://cdn.jsdelivr.net/gh/eza-community/eza/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
	echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
	sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
	sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
	sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
	sudo apt update
	sudo apt install bat eza fastfetch fd-find lolcat vim
	sudo apt install --install-recommends winehq-stable
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.local/src/fzf && ~/.local/src/fzf/install
	curl -sSfL https://cdn.jsdelivr.net/gh/ajeetdsouza/zoxide/install.sh | sh
	ln -s /usr/bin/batcat ~/.local/bin/bat
	ln -s $(which fdfind) ~/.local/bin/fd
	ln -s ~/.local/src/fzf/bin/* ~/.local/bin
	cd ~/.local/src && git clone https://github.com/yahngming/dot && bash ~/.local/src/dot/.local/bin/dot
}

help() {
	echo "Usage: post [option]"
	echo "  arch            run post install script on Arch"
	echo "  chromeos        run post install script on ChromeOS"
}

distro=${1:-help}
$distro
