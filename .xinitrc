# Make CapsLock (66) give Super_L (Windows).
/usr/bin/xmodmap -e "clear Lock"
/usr/bin/xmodmap -e "keycode 66 = Super_L"
/usr/bin/xmodmap ~/.Xmodmap
touch ~/xok
~/startpanel.sh &
#
