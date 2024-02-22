## General
alias ll='ls -lh'
alias dud="du -h --max-depth=1"
export EDITOR=vi

## OS X specific
if [[ $(uname) == "Darwin" ]]
then
  alias ls='ls -lhG' # colourized output is -G for BSD ls, and --color for GNU ls
  alias locate='echo "No! Use mdfind instead!"; #'
  # bash completion
  [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
fi

## Personal tweaks
export PATH=/usr/local/sbin:/usr/local/bin:$PATH
export PATH=/usr/local/opt/mysql-client/bin:$PATH
export PATH=/usr/local/opt/java/bin:$PATH
export PATH=/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin/:$PATH

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

GREEN="\033[0;32m"
ORANGE="\033[1;33m"
RED="\033[0;31m"
PURPLE="\033[0;35m"
CYAN="\033[0;36m"
GREY="\033[0;30m"
NOCOLOUR="\033[0m"
BOLD="\033[1m"
function gitcolour {
  STATUS=$(git status 2>&1)
  if   [[ $STATUS == *'working tree clean'* ]]; then
    echo -en "$GREEN"
  elif [[ $STATUS == *'not staged for commit'* ]]; then
    echo -en "$RED"
  elif [[ $STATUS == *'to be committed'* ]]; then
    echo -en "$ORANGE"
  elif [[ $STATUS == *'Untracked files'* ]]; then
    echo -en "$CYAN"
  fi
}
BOLDLAMBDA="\[$BOLD\]λ\[$NOCOLOUR\]"
# Prettier prompt including Git status and AWS temporary credentials
export PS1="[\t]\w\[\$(gitcolour)\]\$(__git_ps1)\[$NOCOLOUR\]\[\$(gitcolour)\] $BOLDLAMBDA "

# zsh / bash deprecation notice
export BASH_SILENCE_DEPRECATION_WARNING=1

# Longer history
shopt -s histappend
export HISTCONTROL=ignoredups
export HISTSIZE=100000
export HISTFILESIZE=100000

# fzf setup
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
