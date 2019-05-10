xrdb -merge ~/.Xresources
while true; do
    xsetroot -name "$(cat /sys/class/power_supply/BAT/capacity)"
    sleep 5m
done &
exec dwm
