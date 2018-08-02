[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xmodmap -e 'clear Lock' #ensures you're not stuck in CAPS on mode
xmodmap -e 'keycode 0x42=Escape' #remaps the keyboard so CAPS LOCK=ESC
xset r rate 200 40

exec i3

