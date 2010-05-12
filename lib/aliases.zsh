#!/bin/zsh

# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'
alias ss='sudo su -'

#alias g='grep -in'

# Show history
alias history='fc -l 1'

# List direcory contents
alias lsa='ls -lah'
alias l='ls -la'
alias ll='ls -lrth'
alias sl=ls # often screw this up

alias tvamazonas-daemon="ssh -C -l visie mediaspace.redeamazonica.com.br 'less /var/log/mqs/mqs_daemon.log'"
alias tvamazonas-daemon1="ssh -C -l visie mediaspace.redeamazonica.com.br 'less /var/log/mqs/mqs_daemon.log.1'"
alias tvamazonas-log='ssh -C -l visie mediaspace.redeamazonica.com.br '\''tail -f /var/log/mqs/mqs.log'\'
alias tvamazonas-fab="fab -H mediaspace.redeamazonica.com.br:5123 -u visie"
alias brew='nocorrect brew'
alias lftp='nocorrect lftp'

alias create_database="mysqladmin -u root -p create"
alias drop_database="mysqladmin -u root -p drop"
alias awk="gawk"
alias t="python /Users/takai/Projects/Python/t/t.py --task-dir=/Users/takai/.tasks --list tasks"

alias start_pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stop_pg='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias ack="nocorrect ack"
