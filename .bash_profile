# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Homebrew
export PATH=$(brew --prefix)/bin:$PATH
export MANPATH=/Users/knightbaron/.homebrew/share/man:$MANPATH

# Python share
#export PATH=$PATH:$(brew --prefix)/share/python
#export PATH=$PATH:$(brew --prefix)/share/python3

# Node
#export PATH=$PATH:$(brew --prefix)/share/npm/bin

export EDITOR=/usr/local/bin/vim

# Bash Completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

