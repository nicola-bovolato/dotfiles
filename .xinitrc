~/.config/xorg/video.sh
~/.config/xorg/audio.sh
~/.config/xorg/ui.sh

# Start ssh-agent
eval $(ssh-agent)

# Start sxhkd
pgrep -x sxhkd > /dev/null || sxhkd &

# Lauch window manager
/usr/libexec/xfce-polkit &
dbus-run-session bspwm
