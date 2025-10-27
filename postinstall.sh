#!/bin/sh

arch() {
	sudo pacman -S 7zip aerc android-tools atool base-devel bat bc bluez bluez-utils brightnessctl btop cmus cups dante eza fastfetch fd ffmpegthumbnailer fontforge fuse fzf git git-delta glow id3v2 inetutils jq less lf lolcat man-db mpv nsxiv openssh pass perl-image-exiftool pipewire polkit poppler python-adblock python-pywal rclone ripgrep samba timeshift translate-shell udiskie ueberzugpp unrar unzip w3m wireplumber zathura-pdf-poppler zoxide # base
	sudo pacman -S noto-fonts noto-fonts-cjk noto-fonts-emoji otf-firamono-nerd ttf-nerd-fonts-symbols ttf-terminus-nerd # font
	sudo pacman -S blender darktable freecad gvim hugin krita libreoffice-fresh qutebrowser rpi-imager steam # gui
	sudo pacman -S fcitx5-chinese-addons fcitx5-im fcitx5-mozc # ime
	sudo pacman -S cliphist foot fuzzel grim hypridle hyprland hyprlock hyprpaper hyprpolkitagent mako satty slurp waybar wl-clipboard xdg-desktop-portal-hyprland # wayland
	sudo pacman -S dunst maim unclutter xautolock xcape xclip xcompmgr xdo xfce4 xorg-server xorg-xhost xorg-xinput xorg-xrandr xwallpaper # xorg
	mkdir -p ~/.local/src
	cd ~/.local/src && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
 	cd ~/.local/src && git clone https://github.com/yahngming/dot && cd dot && bash .local/bin/dot
	cd ~/.local/src && git clone https://github.com/yahngming/dwm && cd dwm && sudo make clean install
	cd ~/.local/src && git clone https://github.com/yahngming/dmenu && cd dmenu && sudo make clean install
	cd ~/.local/src && git clone https://github.com/yahngming/st && cd st && sudo make clean install
	cd ~/.local/src && git clone https://github.com/yahngming/slock && cd slock && sudo make clean install
	yay -S ctpv-git dragon-drop newsraft sing-box #base
	yay -S asciiquarium-transparent-git lavat-git neo-matrix pipes.c terminaltexteffects-git ttysvr # screensavers
	yay -S bibata-cursor-git chicago95-theme google-chrome r-quick-share-bin #gui
	mkdir -p ~/Pictures/wallpapers && cd ~/Pictures/wallpapers && curl -O https://dt.iki.fi/stuff/forums/arch/ARCH_bubblessvg_v2_5120px.png
   	sudo systemctl enable avahi-daemon.service
   	sudo systemctl enable bluetooth.service
   	sudo systemctl enable cups.service
   	sudo systemctl enable smb.service
 	sudo cp -r ~/.config/udev/hwdb.d/ /etc/udev/
 	sudo cp -r ~/.config/systemd/system/getty\@.service.d/ /etc/systemd/system/
	sudo sed -i 's/LOGIN_TIMEOUT.*/LOGIN_TIMEOUT 0/' /etc/login.defs
	sudo gpasswd -a $USER uucp
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

distro=${1:-help}
$distro
