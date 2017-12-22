#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

#xbindkeys &
#trayer --expand true --widthtype request --transparent true --alpha 255 --edge top --align right &
#wihack -tags /./  trayer --edge top --widthtype request  --transparent true &
localectl set-x11-keymap us,ru microsoft4000 winkeys grp:caps_toggle
eval `ssh-agent`
sbxkb &
/usr/lib/notification-daemon-1.0/notification-daemon &
#numlockx on
#exec wmaker
#exec startkde
# exec icewm
# exec blackbox
# exec fluxbox
#startxfce4
#urxvtd &
witray -V -s 30 &
xrandr  --output VGA-1 --rotate left 
#exec wmii
exec xautolock -locker slimlock &
exec i3
#exec xmonad
#exec  awesome
#exec twm
#exec  xclock

