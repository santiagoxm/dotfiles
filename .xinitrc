#!/bin/bash
setxkbmap -layout es #keyboard layout
xinput set-prop "pointer:Logitech G305" "libinput Accel Profile Enabled" 0 1 0 #disable accel
xinput set-prop "pointer:Logitech G305" "libinput Accel Speed" -0.50 #sensitivity 
setxkbmap -option caps:escape

export SHELL=/usr/bin/fish

slstatus & #status bar
~/.fehbg & #background
picom & #compositor
CM_SELECTIONS=clipboard clipmenud & #clipboard manager
dunst & #notification daemon
/usr/lib/xdg-desktop-portal-gtk & #desktop portal
redshift -l -35:-58 & #night light

exec dwm
