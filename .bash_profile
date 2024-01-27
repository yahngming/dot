[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="${PATH}:${HOME}/.local/bin"
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="firefox"
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec startx
fi

(cat ~/.cache/wal/sequences &)
