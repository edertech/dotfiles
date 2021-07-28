bindkey -e
zstyle :compinstall filename '/home/ederson/.zshrc'
autoload -Uz compinit 
compinit

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/  --work-tree=$HOME'

powerline-daemon -q
. /usr/share/powerline/bindings/zsh/powerline.zsh
