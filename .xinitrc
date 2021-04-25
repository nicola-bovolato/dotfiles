~/.config/xorg/video.sh
~/.config/xorg/audio.sh
~/.config/xorg/ui.sh

# Start sxhkd
pgrep -x sxhkd > /dev/null || sxhkd &

# Lauch window manager
exec bspwm
