# .bash_profile

# Start Xorg on terminal 1 
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc
