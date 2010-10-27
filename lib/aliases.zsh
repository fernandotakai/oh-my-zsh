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

alias brew='nocorrect brew'
alias lftp='nocorrect lftp'
alias fpath='nocorrect fpath'

alias create_database="mysqladmin -u root -p create"
alias drop_database="mysqladmin -u root -p drop"
alias awk="gawk"
alias t="python /Users/takai/Projects/Python/t/t.py --task-dir=/Users/takai/.tasks --list tasks"

alias start_pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stop_pg='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias ack="nocorrect ack"
alias cpath="pwd|tr -d '\n'|pbcopy"
alias node='nocorrect node'
alias npm='nocorrect npm'
