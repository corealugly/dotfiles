# Disable screen blanking
#xset -dmps &
#xset s noblank &
#xset s off &

# Update X resources db
xrdb -merge ~/.Xdefaults &

# Option Synaptic
synclient TapButton1=1
synclient TapButton2=3
synclient TapButton3=2

# Run URxvt as a daemon
( ( sleep 1 && /usr/bin/urxvtd -q -f -o) & )

# Run guake
#( ( sleep 2 && /usr/bin/guake) & )

# Compton composite manager
( ( sleep 2 && /usr/bin/compton -b) & )

# Change language for AWESOME
( ( sleep 3 && /usr/bin/setxkbmap -layout us,ru -variant -option  grp:alt_shift_toggle, terminate:ctrl_alt_bksp ) & )
( ( sleep 2 && /usr/bin/kbdd ) & )
#( ( sleep 2 && setxkbmap -layout us,ru -variant -option grp:caps_toggle,terminate:ctrl_alt_bksp & ) & )
#( ( sleep 2 && /usr/bin/xxkb ) & )

# Music Player Daemon
( ( sleep 10 && /usr/bin/mpd ) & )

# NetworkManager applet
( ( sleep 2 && dbus-launch /usr/bin/nm-applet ) & )

# Copy/Paste sync
#autocutsel -fork &
#autocutsel -selection PRIMARY -fork &

# Pulseaudio
/usr/bin/start-pulseaudio-x11 &

~/dotfiles/scripts/monitor-control/controlMon.pl

exec ck-launch-session dbus-launch --sh-syntax --exit-with-session awesome
