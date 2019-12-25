# Disable screen blanking
#xset -dmps &
#xset s noblank &
#xset s off &

#ENV
export QT_AUTO_SCREEN_SCALE_FACTOR=0    #fix for keepassxc

#dbus-run
export  $(dbus-launch)

# Update X resources db
xrdb -merge ~/.Xdefaults &

# Run URxvt as a daemon
( ( sleep 1 && /usr/bin/urxvtd -q -f -o) & )

# Run guake
#( ( sleep 2 && /usr/bin/guake) & )

# Compton composite manager
( ( sleep 2 && /usr/bin/compton -b --config ~/.config/awesome/configuration/compton.conf ) & )

# Change language for AWESOME
#( ( sleep 3 && /usr/bin/setxkbmap -layout us,ru -variant -option  grp:alt_shift_toggle, terminate:ctrl_alt_bksp ) & )
#( ( sleep 10 && /usr/bin/kbdd ) & )

# Hide mouse, then not moving
( ( sleep 5 && /usr/bin/unclutter -root ) & )

# Music Player Daemon
( ( sleep 10 && /usr/bin/mpd ) & )

# NetworkManager applet
#( ( sleep 2 && /usr/bin/nm-applet ) & )
##( ( sleep 2 && dbus-launch /usr/bin/nm-applet ) & )
##( ( sleep 2 && dbus-launch --sh-syntax --exit-with-session /usr/bin/nm-applet ) & )


# SYNC PRIMARY and CLIPBOARD BUFFER NEW
( ( sleep 5 && clipmenud ) & )

#TEST keyring-daemon
#( ( sleep 5 && dbus-launch /usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh ) & )

# Copy/Paste sync
#autocutsel -fork &
#autocutsel -selection PRIMARY -fork &

#redshift
#( ( sleep 5 && redshift-gtk ) & )

# Pulseaudio
#/usr/bin/start-pulseaudio-x11 &
( ( sleep 10 && /usr/bin/pulseaudio --start ) & )

#~/dotfiles/scripts/monitor-control/controlMon.pl --changeDPstatus

#keyboard option
#setxkbmap -layout us,ru -option grp:alt_shift_toggle -option grp_led:caps

# Conky
conky -d -c .conky/network 

#exec ck-launch-session dbus-launch --sh-syntax --exit-with-session awesome
#fucking with polkit
exec ck-launch-session awesome
#clean down OK !!!!!
#exec awesome
#exec dbus-launch --sh-syntax --exit-with-session awesome
