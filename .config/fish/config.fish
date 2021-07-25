set JAVA_HOME /usr/lib/jvm/java-8-openjdk/bin/java
set GROOVY_HOME /home/ederson/Developer/SDKs/groovy
set ANDROID_HOME /home/ederson/Android/Sdk
set CHROME_EXECUTABLE /usr/bin/chromium

set PATH $PATH /home/ederson/.local/bin ~/.ghcup/bin $GROOVY_HOME/bin $ANDROID_HOME/platforms $ANDROID_HOME/platform-tools ~/.npm-global/bin

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/    --work-tree=$HOME'

alias vim=nvim
alias upall='yay -Syu --noconfirm'
alias pacman='sudo pacman --color auto'

set EDITOR vim


neofetch
