# Kyrylo Silin -->
#                 https://github.com/kyrylo/dot
#                                              <-- kyrylosilin@gmail.com
# Autostart programs.
parcellite &
stardict &
urxvt &

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

# Run systemd as user intsance.
systemd --user &

# Launch window manager.
exec ck-launch-session subtle
#exec ck-launch-session xmonad
