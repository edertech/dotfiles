
function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}


# autostart
pgrep -x sxhkd > /dev/null || sxhkd &
$HOME/.config/polybar/launch.sh &
run /usr/lib/xfce-polkit/xfce-polkit &
run blueman-applet &
run volumeicon &
run nm-applet &
run /usr/bin/emacs --daemon &
run xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-1 --mode 1440x900 --pos 1920x0 --rotate normal --output DP-1 --off --output HDMI-2 --off
run nitrogen --restore &
run picom &

