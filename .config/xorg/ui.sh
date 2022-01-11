# Start compositor
picom &

# Change Keyboard map
setxkbmap it

# Set Mouse pointer
echo 'Xcursor.theme: Adwaita' | xrdb -merge
xsetroot -cursor_name left_ptr
unclutter -idle 2 &

# Start menu bar
MONITOR=$(cat .config/variables/primary-monitor) ~/.config/polybar/launch.sh &

# Set wallpaper
nitrogen --restore &

# Load terminal styles
xrdb -merge .config/rxvt-unicode/Xresources

