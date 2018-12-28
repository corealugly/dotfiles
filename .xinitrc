# Disable screen blanking
#xset -dmps &
#xset s noblank &
#xset s off &

#dbus-run
export  $(dbus-launch)

# Update X resources db
xrdb -merge ~/.Xdefaults &

# Run URxvt as a daemon
( ( sleep 1 && /usr/bin/urxvtd -q -f -o) & )

# Run guake
#( ( sleep 2 && /usr/bin/guake) & )

# Compton composite manager
( ( sleep 2 && /usr/bin/compton -b) & )

# Change language for AWESOME
#( ( sleep 3 && /usr/bin/setxkbmap -layout us,ru -variant -option  grp:alt_shift_toggle, terminate:ctrl_alt_bksp ) & )
( ( sleep 10 && /usr/bin/kbdd ) & )
#( ( sleep 10 && dbus-launch /usr/bin/kbdd ) & )
#dbus-launch /usr/bin/kbdd &
#( ( sleep 2 && /usr/bin/xxkb ) & )

# Music Player Daemon
( ( sleep 10 && /usr/bin/mpd ) & )

# NetworkManager applet
#( ( sleep 2 && dbus-launch /usr/bin/nm-applet ) & )
#( ( sleep 2 && /usr/bin/nm-applet ) & )
#( ( sleep 2 && dbus-launch --sh-syntax --exit-with-session /usr/bin/nm-applet ) & )
( ( sleep 2 && /usr/bin/nm-applet ) & )


# SYNC PRIMARY and CLIPBOARD BUFFER NEW
( ( sleep 5 && clipmenud ) & )

#TEST keyring-daemon
#( ( sleep 5 && dbus-launch /usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh ) & )

# Copy/Paste sync
#autocutsel -fork &
#autocutsel -selection PRIMARY -fork &

# Pulseaudio
/usr/bin/start-pulseaudio-x11 &

#~/dotfiles/scripts/monitor-control/controlMon.pl --changeDPstatus

# Option Synaptic
synclient LeftEdge=1574  \
          RightEdge=5369 \
          TopEdge=1354  \
          BottomEdge=4571 \
          FingerLow=25  \
          FingerHigh=30 \
          MaxTapTime=180 \
          MaxTapMove=254 \
          MaxDoubleTapTime=180 \
          SingleTapTimeout=180 \
          ClickTime=100 \
          EmulateMidButtonTime=0 \
          EmulateTwoFingerMinZ=282 \
          EmulateTwoFingerMinW=7 \
          VertScrollDelta=115 \
          HorizScrollDelta=115 \
          VertEdgeScroll=0 \
          HorizEdgeScroll=1 \
          CornerCoasting=0 \
          VertTwoFingerScroll=1 \
          HorizTwoFingerScroll=0 \
          MinSpeed=1 \
          MaxSpeed=1.75 \
          AccelFactor=0.0345901 \
          TouchpadOff=0 \
          LockedDrags=0 \
          LockedDragTimeout=5000 \
          RTCornerButton=0 \
          RBCornerButton=0 \
          LTCornerButton=0 \
          LBCornerButton=0 \
          TapButton1=1 \
          TapButton2=3 \ 
          TapButton3=2 \
          ClickFinger1=1 \
          ClickFinger2=3 \
          ClickFinger3=2 \
          CircularScrolling=0 \
          CircScrollDelta=0.1 \
          CircScrollTrigger=0 \
          CircularPad=0 \
          PalmDetect=0 \
          PalmMinWidth=10 \
          PalmMinZ=200 \
          CoastingSpeed=20 \
          CoastingFriction=50 \
          PressureMotionMinZ=30 \
          PressureMotionMaxZ=160 \
          PressureMotionMinFactor=1 \
          PressureMotionMaxFactor=1 \
          GrabEventDevice=0 \
          TapAndDragGesture=1 \
          AreaLeftEdge=0 \
          AreaRightEdge=0 \
          AreaTopEdge=0 \
          AreaBottomEdge=0 \
          HorizHysteresis=28 \
          VertHysteresis=28 \
          ClickPad=1 \
          RightButtonAreaLeft=3471 \
          RightButtonAreaRight=0 \
          RightButtonAreaTop=4158 \
          RightButtonAreaBottom=0 \
          MiddleButtonAreaLeft=0 \
          MiddleButtonAreaRight=0 \
          MiddleButtonAreaTop=0 \
          MiddleButtonAreaBottom=0 \

#exec ck-launch-session dbus-launch --sh-syntax --exit-with-session awesome
#fucking with polkit
#exec ck-launch-session awesome
#clean down OK !!!!!
exec awesome
#exec dbus-launch --sh-syntax --exit-with-session awesome
