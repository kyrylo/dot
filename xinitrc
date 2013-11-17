# Kyrylo Silin -->
#                 https://github.com/kyrylo/dot
#                                              <-- kyrylosilin@gmail.com
# Autostart programs.
parcellite &
dropboxd &
mpd &
sylpheed &
gnucash &
redshift -l 50:36.15 -t 5700:3600 -m randr &
emacs --daemon &

# Key repeat <rate> and <delay>.
xset r rate 300 50

# Settings for GUI applications.
xrdb -merge ~/.Xresources

# Mouse sensitivity 'xset m <sens> <threshold>.
xset m 1 1

# Minimal brightness.
xbacklight -set 1

# Bindings for multimedia keys.
xbindkeys

# Keyboard layouts, switcher button and compose key.
setxkbmap -layout us,ru -option "grp:caps_toggle,grp_led:scroll,compose:ralt"

# Use a wallpaper.
feh --bg-scale ~/Dropbox/pictures/wallpapers/wallpaper.jpg

# Run systemd as user intsance.
#systemd --user &

# Launch window manager.
exec subtle
