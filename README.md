# dotfiles

### dependencies:

- atool bat bc btop clash cmus ctpv dmenu dwm emby-theater eza fastfetch fcitx5-chinese-addons fcitx5-im fd ffmpegthumbnailer firefox fzf git git-delta glow gvim imlib2 jq lf libxss lolcat noto-fonts noto-fonts-cjk noto-fonts-emoji perl-file-mimeinfo perl-image-exiftool polkit poppler python-pywal slock st steam trash-cli ttf-nerd-fonts-symbols ueberzug xcape xcompmgr xdo xorg-xrandr xssstate xwallpaper yay zoxide

### applications:
- android-tools cmatrix figlet freecad keepassxc libreoffice-fresh maim man-db mpv nsxiv orca-slicer rsync sdrpp-git xclip

### post-install:
- mkdir ~/.local/src && cd ~/.local/src
- git clone https://github.com/yahngming/dot
- cd ~/.local/src/dot/.local/bin && bash post
