alias la='ls -a' ll='ls -l' lla='ls -la'
alias grep='grep --color=auto'
alias v='vim'
GIT_EDITOR=v

alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vimdiff='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim -d "$@"'

# tool:my is set in ~/.gitconfig
alias gitdiff='git difftool --tool=my --no-prompt'
alias g='git'

alias tiga='tig --all'
alias inomake='ino build && ino upload && ino serial'
alias megamake='ino build -m mega2560 && ino upload -m mega2560 && ino serial'

alias gtagsp='gtags --gtagsconf=/Users/datsuns/work/build/pygments/gtags.conf --gtagslabel=pygments'
alias globalp='global --gtagsconf=/Users/datsuns/work/build/pygments/gtags.conf --gtagslabel=pygments'


#PATH=/opt/local/bin:$HOME/bin:$PATH:$HOME/bin/gradle-1.0-rc-1/bin:~/bin:~/bin/android-sdk-macosx/platform-tools
#PATH=$HOME/bin:$PATH:$HOME/bin/gradle-1.0-rc-1/bin:~/bin:~/bin/android-sdk-macosx/platform-tools
PATH=$HOME/bin:$PATH:$HOME/bin/gradle-1.0-rc-1/bin:~/bin:~/Library/Android/sdk/platform-tools/
PATH=/usr/local/bin:$PATH

export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim

# MacPorts Installer addition on 2012-04-08_at_22:54:21: adding an appropriate PATH variable for use with MacPorts.
# Finished adapting your PATH environment variable for use with MacPorts.

export CLICOLOR=1
export LSCOLORS=GxDxcxdxCxegedabagacad

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"

export GOROOT=$(brew --prefix go)/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin

