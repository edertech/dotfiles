#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run /usr/lib/xfce-polkit/xfce-polkit &
run blueman-applet &
run volumeicon &
run nm-applet &
run /usr/bin/emacs --daemon &
run nitrogen --restore &
run picom &
