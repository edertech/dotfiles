
function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}


# autostart
pgrep -x sxhkd > /dev/null || sxhkd &

# polybar ----------------------------------------------
killall -q polybar
polybar edertech-bar-1 2>&1 | tee -a /tmp/polybar1.log & disown
polybar edertech-bar-2 2>&1 | tee -a /tmp/polybar2.log & disown
# ------------------------------------------------------

run /usr/lib/xfce-polkit/xfce-polkit &
run blueman-applet &
run volumeicon &
run nm-applet &
run /usr/bin/emacs --daemon &
run $HOME/.screenlayout/dois-monitores.sh 
run nitrogen --restore &
run picom &

