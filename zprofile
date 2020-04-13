# appending scripts path to PATH variable
PATH=$PATH:/$HOME/.scripts

# auto start gui for tty1
# [[ -f ~/.bashrc ]] && . ~/.bashrc
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec startx;
fi
