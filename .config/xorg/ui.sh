# Start compositor
picom &

# Change Keyboard map
setxkbmap it

# Set Mouse pointer
echo 'Xcursor.theme: Adwaita' | xrdb -merge
xsetroot -cursor_name left_ptr
unclutter -idle 2 &

# Start menu bar
PRIMARY_MONITOR=$(cat .config/variables/primary-monitor) SECONDARY_MONITOR=$(cat .config/variables/secondary-monitor) ~/.config/polybar/launch.sh &

# Set wallpaper
nitrogen --restore &

# Load terminal styles
xrdb -merge .config/rxvt-unicode/Xresources

