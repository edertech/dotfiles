
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
run $HOME/.screenlayout/dois-monitores.sh 
run nitrogen --restore &
run picom &

