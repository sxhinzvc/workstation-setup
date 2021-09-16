#!/bin/bash

# add bash aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# start from ~/projects
cd ~/projects

# extend regex
# shopt -s extglob

# set up Python env
#eval "$(pyenv init -)"
#export PATH=$(pyenv root)/shims:$PATH:$GOPATH/bin

# use brew-installed ruby instead of default OSX
export PATH="/usr/local/opt/ruby/bin:$PATH"

# include postgres
export PATH="$(dirname /usr/local/Cellar/postgresql@11/*/bin)/bin:$PATH"

# set up Go path
# export GOPATH=$HOME/go

# enable direnv
eval $(direnv hook bash)

# get xterm and ANSI colors
export TERM=xterm-256color
export CLICOLOR=1

# show dirty state in prompt when in Git repos
export GIT_PS1_SHOWDIRTYSTATE=1

# colourize prompt
#PS1_OLD=${PS1}
#export PS1='\[\033[1;35m\]\u\[\033[0m\]:\[\033[1;35m\]\W\[\033[0m\] \[\033[1;92m\]\[\033[0m\]$ '

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"

. /usr/local/Cellar/z/1.9/etc/profile.d/z.sh
