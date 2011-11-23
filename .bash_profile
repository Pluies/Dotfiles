alias ri='/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/bin/ri'
alias ll='ls -l'
alias ls='ls -G'
alias duh='du -d 1 2>/dev/null|/Users/florent/Dropbox/Binaries/orderdu.pl'

export PATH=~/Dropbox/Binaries/z:~/Dropbox/Binaries:~/Dropbox/Binaries/perl:$PATH:/usr/local/sbin

export EDITOR=vim

# Make z work
. ~/Dropbox/Binaries/z/z.sh

# Prettier prompt
export PS1="[\t] \u@\h:\w $ "

# dns-sd -P iTunesServer _daap._tcp local 3690 localhost.local 127.0.0.1 &

