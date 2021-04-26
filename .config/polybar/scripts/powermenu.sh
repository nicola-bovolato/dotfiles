dir="~/.config/polybar/scripts/rofi"
uptime=$(uptime -p | sed -e 's/up //g')

rofi_command="rofi -theme $dir/powermenu.rasi"

# Options
shutdown="⏻  Shutdown"
reboot="  Restart"
suspend="鈴  Sleep"
logout="  Logout"

# Variable passed to rofi
options="$suspend\n$logout\n$reboot\n$shutdown"

chosen="$(echo "$options" | $rofi_command -p "Uptime: $uptime" -dmenu -selected-row 0)"
case $chosen in
    $shutdown)
        sudo poweroff
        ;;
    $reboot)
        sudo reboot
        ;;
    $suspend)
		mpc -q pause
		pactl set-sink-mute @DEFAULT_SINK@ toggle
		sudo zzz
        ;;
    $logout)
        mpc -q stop
		bspc quit
        ;;
esac
