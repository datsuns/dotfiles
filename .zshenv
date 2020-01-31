#####################################################################
#
#  Sample .zshenv file
#
#  initial setup file for both interactive and noninteractive zsh
#
#####################################################################

limit coredumpsize 0
# Setup command search path
typeset -U path

path=($path /usr/*/bin(N-/) /usr/local/*/bin(N-/) /var/*/bin(N-/))

export RSYNC_RSH=ssh
export CVS_RSH=ssh

PATH=$HOME/bin:$PATH:$HOME/bin/gradle-1.0-rc-1/bin:~/bin:~/bin/android-sdk-macosx/platform-tools
PATH=/usr/local/bin:$PATH
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"
export PATH="$PATH:$HOME/bin/flutter/bin"



# for rbenv
if [ -d ${HOME}/.rbenv ] ; then
  export PATH=${HOME}/.rbenv/bin:${PATH}
  eval "$(rbenv init -)"
fi
