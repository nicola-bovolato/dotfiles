# Change Keyboard map
setxkbmap it

# Start pulseaudio
pulseaudio --daemonize

# Start MPD
mpd &

# Set Mouse pointer
xrdb -merge .Xresources
xsetroot -cursor_name left_ptr
unclutter --timeout 2 &

# Enable Dark Mode for QTWebEngine
export QT_QPA_PLATFORMTHEME="qt5ct"
export QTWEBENGINE_CHROMIUM_FLAGS=--blink-settings=forceDarkModeEnabled=true

# Check is sxhkd is running, if not start it
pgrep -x sxhkd > /dev/null || sxhkd &

# Set wallpaper
nitrogen --restore &

# Start compositor
picom &

# Start menu bar
~/.config/polybar/launch.sh &

# Load terminal styles
xrdb -merge .config/urxvt/.Xresources

# Lauch window manager
exec bspwm
