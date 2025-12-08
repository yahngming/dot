#!/bin/sh

arch() {
	sudo sed -i 's/LOGIN_TIMEOUT.*/LOGIN_TIMEOUT 0/' /etc/login.defs
	sudo sed -i '/#\[multilib\]/,+1s/^#//' /etc/pacman.conf
	sudo pacman -Syy --noconfirm
	sudo pacman -Sy --needed --noconfirm archlinux-keyring
	sudo pacman -S --noconfirm bluez bluez-utils brightnessctl evtest intel-media-driver lib32-mesa lib32-vulkan-icd-loader lib32-vulkan-intel lib32-vulkan-radeon mesa pipewire pipewire-audio pipewire-jack udiskie vulkan-icd-loader vulkan-intel vulkan-radeon wireplumber # driver
	sudo pacman -S --noconfirm 7zip android-tools atool base-devel bat bc cups dante docker docker-compose eza fastfetch fd ffmpegthumbnailer fontforge fuse fzf git git-delta glow id3v2 inetutils jq less lolcat man-db mpv nsxiv openssh pass perl-image-exiftool polkit poppler python-adblock python-pywal rclone ripgrep samba translate-shell ueberzugpp unrar unzip w3m yt-dlp zathura-pdf-poppler zoxide # base
	sudo pacman -S --noconfirm noto-fonts-cjk noto-fonts-emoji ttf-input-nerd ttf-noto-nerd ttf-terminus-nerd # font
	sudo pacman -S --noconfirm aerc bluetui btop cmus impala lf wiremix # tui
	sudo pacman -S --noconfirm gvim libreoffice-fresh qutebrowser steam # gui
	sudo pacman -S --noconfirm fcitx5-chinese-addons fcitx5-im fcitx5-mozc # ime
	sudo pacman -S --noconfirm cliphist foot fuzzel grim hypridle hyprland hyprlock hyprpaper hyprpolkitagent mako niri qt6-wayland satty slurp swaybg waybar wl-clipboard wl-mirror wlr-randr xdg-desktop-portal-hyprland xwayland-satellite # wayland
	sudo pacman -S --noconfirm dunst maim unclutter xcape xclip xcompmgr xdg-desktop-portal-gnome xdo xfce4 xorg-server xorg-xinit xorg-xinput xorg-xrandr xwallpaper # xorg
   	sudo systemctl enable avahi-daemon.service
   	sudo systemctl enable bluetooth.service
   	sudo systemctl enable cups.service
   	sudo systemctl enable docker.socket
   	sudo systemctl enable smb.service
	sudo gpasswd -a $USER uucp
	sudo usermod -aG docker $USER
	mkdir -p ~/.local/src
	cd ~/.local/src && git clone https://aur.archlinux.org/yay.git && cd yay && GOPROXY=direct makepkg -si
 	cd ~/.local/src && git clone https://github.com/yahngming/dot && cd dot && bash .local/bin/dot
	cd ~/.local/src && git clone https://github.com/yahngming/dwm && cd dwm && sudo make clean install
	cd ~/.local/src && git clone https://github.com/yahngming/dmenu && cd dmenu && sudo make clean install
	cd ~/.local/src && git clone https://github.com/yahngming/st && cd st && sudo make clean install
	cd ~/.local/src && git clone https://github.com/yahngming/slock && cd slock && sudo make clean install
	yay -S --noconfirm ctpv-git dragon-drop newsraft sing-box xautolock #base
	yay -S --noconfirm asciiquarium-transparent-git lavat-git neo-matrix pipes.c python-terminaltexteffects ttysvr # screensavers
	yay -S --noconfirm bibata-cursor-git chicago95-theme google-chrome r-quick-share-bin #gui
}

chromeos() {
	sudo apt install git
	mkdir -p ~/.local/src
	cd ~/.local/src && git clone https://github.com/yahngming/dot && cd dot && bash .local/bin/dot
	sudo dpkg --add-architecture i386
	sudo mkdir -pm755 /etc/apt/keyrings
	wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
	echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
	sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
	sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
	sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
	sudo apt update
	sudo apt install bat eza fastfetch fd-find lolcat vim
	sudo apt install --install-recommends winehq-stable
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.local/src/fzf && ~/.local/src/fzf/install
	curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
	ln -s /usr/bin/batcat ~/.local/bin/bat
	ln -s $(which fdfind) ~/.local/bin/fd
	ln -s ~/.local/src/fzf/bin/* ~/.local/bin
}

help() {
	echo "Usage: postinstall [DISTRO]"
	echo "  arch            run post install script on Arch"
	echo "  chromeos        run post install script on ChromeOS"
}

case "$@" in
	arch|chromeos ) $@ ;;
	*             ) help ;;
esac
