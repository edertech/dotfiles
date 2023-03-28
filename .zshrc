# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi


# ---------------- After that is my config -----------------

alias ll="exa -l  --icons"
alias la="exa -la --icons"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

export XDG_CONFIG_HOME=$HOME/.config
export CHROME_EXECUTABLE=/var/lib/snapd/snap/bin/chromium
export FLUTTER_PATH=$HOME/snap/flutter/common/flutter/bin
export ANDROID_TOOLS=~/Android/Sdk/platform-tools
export PATH="$PATH:$XDG_CONFIG_HOME/emacs/bin:$HOME/.emacs.d/bin:$HOME/bin:$FLUTTER_PATH:$ANDROID_TOOLS"

