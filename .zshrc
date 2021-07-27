bindkey -e
zstyle :compinstall filename '/home/ederson/.zshrc'
autoload -Uz compinit 
compinit

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/  --work-tree=$HOME'

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

powerline-daemon -q
. /usr/share/powerline/bindings/zsh/powerline.zsh
