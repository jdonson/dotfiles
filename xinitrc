#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then

    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then

    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


# starts compton
compton &

# sets custom font path
xset +fp /usr/share/fonts/local/

# sets wallpaper
#feh --bg-scale ~/Dropbox/Photos/Wallpaper/Macbook\ Retina/Argentina_MBPro_Retina.jpg
feh --bg-scale ~/Dropbox/Photos/Wallpaper/Macbook\ Retina/N6dS3.jpg

# launches redshift
pgrep redshift &> /dev/null || redshift &> /dev/null &

# starts xbindkeys to map media keys
xbindkeys

# starts i3 window manager and logs it
exec i3 -V >> ~/.i3/log/i3-out-$(date + '%F-%k-%M-%S').log 2>&1
