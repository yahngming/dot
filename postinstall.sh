#!/bin/sh

arch() {
	sudo pacman -Syu 7zip aerc atool base-devel bat bc bluez bluez-utils btop clash cmus cups dante eza fastfetch fcitx5-chinese-addons fcitx5-im fd ffmpegthumbnailer firefox fontforge fzf git git-delta glow gvim jq less lf libreoffice-fresh lolcat maim man-db mpv nodejs noto-fonts noto-fonts-cjk noto-fonts-emoji nsxiv openssh pass perl-image-exiftool polkit poppler python-pywal rsync samba steam translate-shell trash-cli ttf-nerd-fonts-symbols udiskie ueberzugpp unrar unzip w3m xautolock xcape xclip xcompmgr xdo xorg-xrandr xwallpaper zathura-pdf-poppler zoxide
	mkdir -p ~/.local/src
 	cd ~/.local/src && git clone https://github.com/yahngming/dot && cd dot && bash .local/bin/dot
	cd ~/.local/src && git clone https://github.com/yahngming/dwm && cd dwm && sudo make clean install
	cd ~/.local/src && git clone https://github.com/yahngming/dmenu && cd dmenu && sudo make clean install
	cd ~/.local/src && git clone https://github.com/yahngming/st && cd st && sudo make clean install
	cd ~/.local/src && git clone https://github.com/yahngming/slock && cd slock && sudo make clean install
	cd ~/.local/src && git clone https://github.com/yahngming/herbe && cd herbe && sudo make clean install
	cd ~/.local/src && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
	yay -S ctpv-git
 	yay -S newsraft
	mkdir -p ~/.config/clash && cd ~/.config/clash && curl -O https://github.com/Dreamacro/maxmind-geoip/releases/latest/download/Country.mmdb
	mkdir -p ~/.config/firefox && cd ~/.config/firefox && curl -O https://cdn.jsdelivr.net/gh/arkenfox/user.js/prefsCleaner.sh && curl -O https://cdn.jsdelivr.net/gh/arkenfox/user.js/updater.sh && chmod +x *.sh && ./updater.sh
	mkdir -p ~/Pictures/wallpapers && cd ~/Pictures/wallpapers && curl -O https://dt.iki.fi/stuff/forums/arch/ARCH_bubblessvg_v2_5120px.png
 	sudo cp -r ~/.config/getty\@.service.d/ /etc/systemd/system/
   	sudo systemctl enable avahi-daemon.service
   	sudo systemctl enable bluetooth.service
   	sudo systemctl enable cups.service
   	sudo systemctl enable smb.service
	gsettings set org.gnome.system.proxy.ftp host '127.0.0.1'
	gsettings set org.gnome.system.proxy.ftp port 7890
	gsettings set org.gnome.system.proxy.http host '127.0.0.1'
	gsettings set org.gnome.system.proxy.http port 7890
	gsettings set org.gnome.system.proxy.https host '127.0.0.1'
	gsettings set org.gnome.system.proxy.https port 7890
	gsettings set org.gnome.system.proxy.socks host '127.0.0.1'
	gsettings set org.gnome.system.proxy.socks port 7891
 	fcitx5-configtool
}

chromeos() {
	sudo apt install git
	mkdir -p ~/.local/src
	cd ~/.local/src && git clone https://github.com/yahngming/dot && cd dot && bash .local/bin/dot
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
}

help() {
	echo "Usage: postinstall [option]"
	echo "  arch            run post install script on Arch"
	echo "  chromeos        run post install script on ChromeOS"
}

distro=${1:-help}
$distro
