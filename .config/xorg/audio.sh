# Start pulseaudio
pgrep -x pulseaudio > /dev/null || pulseaudio --daemonize

# Start MPD
pgrep -x mpd > /dev/null || mpd &
