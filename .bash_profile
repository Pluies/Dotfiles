## General
alias ll='ls -lh'
alias dud="du -h --max-depth=1"
export EDITOR=vim
export PS1="[\t] \u@\h:\w $ " # Prettier prompt

## Linux specific
alias ll='ls -lh --color'

## OS X specific
alias ls='ls -lhG' # colourized output is -G for BSD ls, and --color for GNU ls

## Personal tweaks
export PATH=~/Dropbox/Binaries/z:~/Dropbox/Binaries:~/Dropbox/Binaries/perl:$PATH:/usr/local/sbin
# dns-sd -P iTunesServer _daap._tcp local 3690 localhost.local 127.0.0.1 &
alias duh='du -d 1 2>/dev/null|/Users/florent/Dropbox/Binaries/orderdu.pl'

