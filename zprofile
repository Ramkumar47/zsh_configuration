# appending scripts path to PATH variable
PATH=$PATH:/$HOME/.scripts

export QT_QPA_PLATFORMTHEME="qt5ct"

export TERMINAL=/usr/bin/termite
export EDITOR=/usr/bin/vim

# auto start gui for tty1
# [[ -f ~/.bashrc ]] && . ~/.bashrc
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec startx;
fi
