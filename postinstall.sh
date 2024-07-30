#!/bin/sh

arch() {
	sudo pacman --sync --needed --refresh --sysupgrade atool base-devel bat bc btop clash cmus emby-theater eza fastfetch fcitx5-chinese-addons fcitx5-im fd ffmpegthumbnailer firefox fzf git git-delta glow gvim imlib2 jq keepassxc lf libxss lolcat maim man-db mpv noto-fonts noto-fonts-cjk noto-fonts-emoji nsxiv ttf-nerd-fonts-symbols perl-file-mimeinfo perl-image-exiftool polkit poppler python-pywal steam trash-cli ueberzug xcape xclip xcompmgr xdo xorg-xrandr xssstate xwallpaper zoxide
	mkdir -p ~/.config/clash
	mkdir -p ~/.local/src
	mkdir -p ~/Pictures/screenshots
	mkdir -p ~/Pictures/wallpapers
	cd ~/.local/src
	git clone https://github.com/yahngming/dot
	git clone https://github.com/yahngming/dwm
	git clone https://github.com/yahngming/dmenu
	git clone https://github.com/yahngming/st
	git clone https://github.com/yahngming/slock
	git clone https://aur.archlinux.org/yay.git
	cd ~/.local/src/dwm && sudo make clean install
	cd ~/.local/src/dmenu && sudo make clean install
	cd ~/.local/src/st && sudo make clean install
	cd ~/.local/src/slock && sudo make clean install
	cd ~/.local/src/yay && makepkg -si
	yay -S ctpv
	cd ~/.config/clash && curl -LO https://github.com/Dreamacro/maxmind-geoip/releases/latest/download/Country.mmdb
	cd ~/Pictures/wallpapers && curl -LO https://dt.iki.fi/stuff/forums/arch/ARCH_bubblessvg_v2_5120px.png
	gsettings set org.gnome.system.proxy.ftp host '127.0.0.1'
	gsettings set org.gnome.system.proxy.ftp port 7890
	gsettings set org.gnome.system.proxy.http host '127.0.0.1'
	gsettings set org.gnome.system.proxy.http port 7890
	gsettings set org.gnome.system.proxy.https host '127.0.0.1'
	gsettings set org.gnome.system.proxy.https port 7890
	gsettings set org.gnome.system.proxy.socks host '127.0.0.1'
	gsettings set org.gnome.system.proxy.socks port 7891
	bash ~/.local/src/dot/.local/bin/dot
}

chromeos() {
	sudo apt install git
	mkdir -p ~/.local/src
	cd ~/.local/src
	git clone https://github.com/yahngming/dot
	sudo dpkg --add-architecture i386
	sudo mkdir -pm755 /etc/apt/keyrings
	wget -qO- https://cdn.jsdelivr.net/gh/eza-community/eza/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
	echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
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
	bash ~/.local/src/dot/.local/bin/dot
}

help() {
	echo "Usage: post [option]"
	echo "  arch            run post install script on Arch"
	echo "  chromeos        run post install script on ChromeOS"
}

distro=${1:-help}
$distro
