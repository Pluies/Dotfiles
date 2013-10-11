## General
alias ll='ls -lh'
alias dud="du -h --max-depth=1"
export EDITOR=vim
export PS1="[\t] \u@\h:\w $ "
export JAVA_HOME=/usr/lib/jvm/jdk1.7.0/
export MAVEN_OPTS="-Xms512m -Xmx2048m -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256m"

## Linux specific
alias ll='ls -lh --color'

## OS X specific
#alias ls='ls -lhG' # colourized output is -G for BSD ls, and --color for GNU ls
#if [ -f `brew --prefix`/etc/bash_completion ]; then
#  . `brew --prefix`/etc/bash_completion
#fi

## Personal tweaks
export PATH=~/attic/bin:$PATH
# dns-sd -P iTunesServer _daap._tcp local 3690 localhost.local 127.0.0.1 &
alias duh='du -d 1 2>/dev/null|/Users/florent/Dropbox/Binaries/orderdu.pl'

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

# Aliases
for alias in $(ls ~/attic/Dotfiles/aliases/*)
do
     . $alias
done

# Rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Unify history across sessions
shopt -s histappend
#PROMPT_COMMAND="$PROMPT_COMMAND history -a; history -n"

# Load Node Version Manager
[[ -s /home/florent/.nvm/nvm.sh ]] && . /home/florent/.nvm/nvm.sh

# Add extra bash goodness
shopt -s globstar      # Allows ls **/*.css
shopt -s cdable_vars   # If cd doesn't find the folder, assume it's a var and try to expand it
export m='/home/florent/minefield' # Makes 'cd m' go to minefield

# Cabal
export PATH="$PATH:$HOME/.cabal/bin"

