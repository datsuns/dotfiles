alias la='ls -a' ll='ls -l' lla='ls -la'
alias grep='grep --color=auto'
alias v='vim'

alias gitdiff='git difftool --tool=vimdiff --no-prompt'
alias tiga='tig --all'


PATH=$HOME/bin:$HOME/.rvm/bin:$PATH:$HOME/bin/gradle-1.0-rc-1/bin:~/bin:~/bin/android-sdk-macosx/platform-tools

# RVM
[ -s ${HOME}/.rvm/scripts/rvm ] && source ${HOME}/.rvm/scripts/rvm


##
# Your previous /Users/datsuns/.bash_profile file was backed up as /Users/datsuns/.bash_profile.macports-saved_2012-04-08_at_22:54:21
##

# MacPorts Installer addition on 2012-04-08_at_22:54:21: adding an appropriate PATH variable for use with MacPorts.
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
# Finished adapting your PATH environment variable for use with MacPorts.

export CLICOLOR=1
export LSCOLORS=GxDxcxdxCxegedabagacad

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
