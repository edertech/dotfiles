# Using powerline
USE_POWERLINE="true"

# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
    source /usr/share/zsh/manjaro-zsh-config
fi

# Using manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
    source /usr/share/zsh/manjaro-zsh-prompt
fi

# alias
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/  --work-tree=$HOME'
alias ll="ls -l"

# startup apps
neofetch
