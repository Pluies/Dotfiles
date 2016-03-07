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
	if [ -f `brew --prefix`/etc/bash_completion ]; then
		. `brew --prefix`/etc/bash_completion
	fi
fi

## Personal tweaks
export PATH=/usr/local/sbin:/usr/local/bin:$PATH

# Aliases
for alias in ~/misc/Dotfiles/aliases/*
do
  . $alias
done

# History back and forth
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\eOA": history-search-backward'
bind '"\eOB": history-search-forward'

GREEN="\033[0;32m"
ORANGE="\033[1;33m"
RED="\033[0;31m"
PURPLE="\033[0;35m"
CYAN="\033[0;36m"
NOCOLOUR="\033[0m"
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
# Prettier prompt including Git status
export PS1="[\t]\u@\h:\w\[\$(gitcolour)\]\$(__git_ps1)\[$NOCOLOUR\]$ "
