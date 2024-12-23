#!/bin/sh

arch() {
	sudo pacman -Syu aerc atool base-devel bat bc btop clash cmus dante eza fastfetch fcitx5-chinese-addons fcitx5-im fd ffmpegthumbnailer firefox fontforge fzf git git-delta glow gvim jq less lf libreoffice-fresh lolcat maim man-db mpv noto-fonts noto-fonts-cjk noto-fonts-emoji nsxiv openssh pass perl-image-exiftool polkit poppler python-pywal steam translate-shell trash-cli ttf-nerd-fonts-symbols ueberzugpp w3m xcape xclip xcompmgr xdo xorg-xrandr xssstate xwallpaper zathura-pdf-poppler zoxide
 	mkdir -p ~/.config/clash
	mkdir -p ~/.config/firefox
	mkdir -p ~/.local/src
	mkdir -p ~/Pictures/wallpapers
	cd ~/.local/src && git clone https://github.com/yahngming/dwm && cd ~/.local/src/dwm && sudo make clean install
	cd ~/.local/src && git clone https://github.com/yahngming/dmenu && cd ~/.local/src/dmenu && sudo make clean install
	cd ~/.local/src && git clone https://github.com/yahngming/st && cd ~/.local/src/st && sudo make clean install
	cd ~/.local/src && git clone https://github.com/yahngming/slock && cd ~/.local/src/slock && sudo make clean install
	cd ~/.local/src && git clone https://github.com/yahngming/herbe && cd ~/.local/src/herbe && sudo make clean install
	cd ~/.local/src && git clone https://aur.archlinux.org/yay.git && cd ~/.local/src/yay && makepkg -si
	yay -S ctpv
 	yay -S newsraft
	gsettings set org.gnome.system.proxy.ftp host '127.0.0.1'
	gsettings set org.gnome.system.proxy.ftp port 7890
	gsettings set org.gnome.system.proxy.http host '127.0.0.1'
	gsettings set org.gnome.system.proxy.http port 7890
	gsettings set org.gnome.system.proxy.https host '127.0.0.1'
	gsettings set org.gnome.system.proxy.https port 7890
	gsettings set org.gnome.system.proxy.socks host '127.0.0.1'
	gsettings set org.gnome.system.proxy.socks port 7891
	curl -Lo ~/.config/clash/Country.mmdb https://github.com/Dreamacro/maxmind-geoip/releases/latest/download/Country.mmdb
	curl -Lo ~/.config/firefox/prefsCleaner.sh https://cdn.jsdelivr.net/gh/arkenfox/user.js/prefsCleaner.sh
	curl -Lo ~/.config/firefox/updater.sh https://cdn.jsdelivr.net/gh/arkenfox/user.js/updater.sh
	curl -Lo ~/Pictures/wallpapers/arch.png https://dt.iki.fi/stuff/forums/arch/ARCH_bubblessvg_v2_5120px.png
	cd ~/.local/src && git clone https://github.com/yahngming/dot && bash ~/.local/src/dot/.local/bin/dot && ~/.config/firefox/updater.sh
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
	echo "Usage: postinstall [option]"
	echo "  arch            run post install script on Arch"
	echo "  chromeos        run post install script on ChromeOS"
}

distro=${1:-help}
$distro
