#!/bin/sh

arch() {
	sudo sed -i 's/LOGIN_TIMEOUT.*/LOGIN_TIMEOUT 0/' /etc/login.defs
	sudo sed -i '/#\[multilib\]/,+1s/^#//' /etc/pacman.conf
	sudo pacman -Syu --needed --noconfirm archlinux-keyring
	sudo pacman -S --noconfirm bluez lib32-mesa lib32-vulkan-icd-loader mesa pipewire pipewire-alsa pipewire-jack pipewire-pulse vulkan-icd-loader # driver
	sudo pacman -S --noconfirm lib32-vulkan-radeon ollama-rocm vulkan-radeon # amd
	sudo pacman -S --noconfirm intel-media-driver lib32-vulkan-intel libvpl vpl-gpu-rt vulkan-intel # intel
	sudo pacman -S --noconfirm 7zip aerc atool base-devel bat bc bluetui bluez-utils brightnessctl btop cmus cups dante docker docker-compose evtest eza fastfetch fd ffmpegthumbnailer fontforge fortune-mod fuse fzf git git-delta glow id3v2 impala inetutils jq lazydocker less lf lolcat man-db mpv ollama openssh pass perl-image-exiftool polkit poppler python-pywal rclone ripgrep samba translate-shell udiskie ueberzugpp unrar unzip w3m webkit2gtk-4.1 wiremix wireplumber yt-dlp zathura-pdf-poppler zoxide # base
	sudo pacman -S --noconfirm noto-fonts-cjk noto-fonts-emoji ttf-liberation ttf-noto-nerd ttf-terminus-nerd # font
	sudo pacman -S --noconfirm firefox gamescope gvim keepassxc libreoffice-fresh steam # gui
	sudo pacman -S --noconfirm fcitx5-chinese-addons fcitx5-im fcitx5-mozc # ime
	sudo pacman -S --noconfirm cliphist foot fuzzel grim hypridle hyprland hyprlock hyprpaper kanshi mako niri qt6-wayland satty slurp swaybg waybar wl-clipboard wl-mirror wlr-randr xwayland-satellite # wayland
	sudo pacman -S --noconfirm clipmenu dunst maim nsxiv numlockx unclutter xcape xclip xcompmgr xdg-desktop-portal-gtk xdo xfce4 xorg-server xorg-xinit xorg-xinput xorg-xrandr xscreensaver xwallpaper # xorg
	sudo systemctl enable avahi-daemon.service
	sudo systemctl enable bluetooth.service
	sudo systemctl enable cups.service
	sudo systemctl enable docker.service
	sudo systemctl enable smb.service
	sudo gpasswd -a $USER uucp
	sudo usermod -aG docker $USER
	mkdir -p ~/.local/src
	cd ~/.local/src && git clone https://aur.archlinux.org/yay.git && cd yay && GOPROXY="direct" makepkg -si
	cd ~/.local/src && git clone https://github.com/yahngming/dot && cd dot && bash .local/bin/dot
	cd ~/.local/src && git clone https://github.com/yahngming/dwm && cd dwm && sudo make clean install
	cd ~/.local/src && git clone https://github.com/yahngming/dmenu && cd dmenu && sudo make clean install
	cd ~/.local/src && git clone https://github.com/yahngming/st && cd st && sudo make clean install
	yay -S --noconfirm bibata-cursor-git chicago95-theme ctpv-git dragon-drop newsraft python-pywalfox r-quick-share sing-box xdg-desktop-portal-termfilechooser-hunkyburrito-git #base
	yay -S --noconfirm asciiquarium-transparent-git lavat-git neo-matrix python-terminaltexteffects ttysvr # screensaver
	sudo cp -r ~/.config/udev/ /etc/
	sudo cp -r ~/.config/systemd/ /etc/
	sudo systemd-hwdb update
	sudo udevadm trigger
	cp ~/.config/fastfetch/config-arch.jsonc ~/.config/fastfetch/config.jsonc
	cp ~/.config/fastfetch/logo-arch.txt ~/.config/fastfetch/logo.txt
	cp ~/.config/waybar/config-dwm.jsonc ~/.config/waybar/config.jsonc
	cp ~/.config/waybar/style-dwm.css ~/.config/waybar/style.css
	echo "exec niri-session" > ~/.config/desktop
	echo "ttesvr" > ~/.config/screensaver
	systemctl --user enable --now sun@themeauto.timer
	pywalfox install
	reboot
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
