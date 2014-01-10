#!/bin/sh
# Kyrylo Silin -->
#                 https://github.com/kyrylo/dot
#                                              <-- kyrylosilin@gmail.com
# Autostart programs.

# Settings for GUI applications.
xrdb -merge ~/.Xresources

# Key repeat <rate> and <delay>.
xset r rate 300 50

# Mouse sensitivity 'xset m <sens> <threshold>.
xset m 1 1

# Minimal brightness.
if [ $HOSTNAME = "x220" ]
then
    xbacklight -set 70
else
    xbacklight -set 1
fi

# Bindings for multimedia keys.
xbindkeys

# Keyboard layouts, switcher button and compose key.
setxkbmap -layout us,ru -option "grp:caps_toggle,grp_led:scroll,compose:ralt"

# Use a wallpaper.
feh --bg-scale ~/Dropbox/pictures/wallpapers/wallpaper.jpg

# Launch a window manager.
if [ $HOSTNAME = "x220" ]
then
    xmonad-autostart
else
    exec subtle
fi
