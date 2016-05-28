## General
alias ll='ls -lh'
alias dud="du -h --max-depth=1"
export EDITOR=vim
export PS1="[\t] \u@\h:\w $ "

## Linux specific
#alias ll='ls -lh --color'

## OS X specific
if [[ $(uname) == "Darwin" ]]
then
	alias ls='ls -lhG' # colourized output is -G for BSD ls, and --color for GNU ls
	alias locate='echo "No! Use mdfind instead!"; #'
	alias vim=/Applications/MacVim.app/Contents/MacOS/Vim
	if [ -f `brew --prefix`/etc/bash_completion ]; then
		. `brew --prefix`/etc/bash_completion
	fi
fi

## Personal tweaks
export PATH=/usr/local/sbin:/usr/local/bin:$PATH

# Aliases
for alias in ~/.bash/aliases/*
do
  . $alias
done

# Modules
for module in ~/.bash/modules/*
do
  . $module
done

# History back and forth
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\eOA": history-search-backward'
bind '"\eOB": history-search-forward'
# More history!
HISTSIZE=10000000
HISTFILESIZE=10000000

# rbenv autocompletion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

GREEN="\033[0;32m"
ORANGE="\033[1;33m"
RED="\033[0;31m"
PURPLE="\033[0;35m"
CYAN="\033[0;36m"
NOCOLOUR="\033[0m"
BOLD="\033[1m"
function gitcolour {
  STATUS=`git status 2>&1`
  if   [[ $STATUS == *'working directory clean'* ]]; then
      echo -en $GREEN
  elif [[ $STATUS == *'not staged for commit'* ]]; then
      echo -en $RED
  elif [[ $STATUS == *'to be committed'* ]]; then
      echo -en $ORANGE
  elif [[ $STATUS == *'Untracked files'* ]]; then
      echo -en $CYAN
  fi
}
BOLDLAMBDA="\[$BOLD\]λ\[$NOCOLOUR\]"
# Prettier prompt including Git status
export PS1="[\t]\w\[\$(gitcolour)\]\$(__git_ps1)\[$NOCOLOUR\] $BOLDLAMBDA "

# RVM
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Longer history
shopt -s histappend
export HISTCONTROL=ignoredups
export HISTSIZE=100000
export HISTFILESIZE=100000
