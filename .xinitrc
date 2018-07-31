# Disable screen blanking
#xset -dmps &
#xset s noblank &
#xset s off &

# Update X resources db
xrdb -merge ~/.Xresources &

# Run URxvt as a daemon
( ( sleep 1 && /usr/bin/urxvtd -q -f -o) & )

# Run guake
#( ( sleep 2 && /usr/bin/guake) & )

# Compton composite manager
( ( sleep 2 && /usr/bin/compton -b) & )

# Music Player Daemon
( ( sleep 10 && /usr/bin/mpd ) & )

# NetworkManager applet
( ( sleep 2 && dbus-launch /usr/bin/nm-applet ) & )

# Change language for AWESOME
( ( sleep 2 && /usr/bin/kbdd ) & )
( ( sleep 3 && /usr/bin/setxkbmap -layout us,ru -variant -option  grp:alt_shift_toggle, terminate:ctrl_alt_bksp ) & )

# Copy/Paste sync
#autocutsel -fork &
#autocutsel -selection PRIMARY -fork &

# Pulseaudio
/usr/bin/start-pulseaudio-x11 &

exec ck-launch-session dbus-launch --sh-syntax --exit-with-session awesome
