bindkey -e
zstyle :compinstall filename '/home/ederson/.zshrc'
autoload -Uz compinit 
compinit

fpath=(/usr/share/zsh/site-functions $fpath)

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/  --work-tree=$HOME'

alias ll=ls -l

#######################################################################
# History Configuration
#######################################################################
HISTSIZE=5000               # lines to keep in memory
HISTFILE=~/.zsh_history     # place to save history
SAVEHIST=5000               # number of history to save to disk
setopt  appendhistory       # append history to the history file
setopt  sharehistory        # share history across terminals
setopt  incappendhistory    # immediately append to the history file


#######################################################################
# PowerLine Configuration
#######################################################################

powerline-daemon -q
. /usr/share/powerline/bindings/zsh/powerline.zsh

