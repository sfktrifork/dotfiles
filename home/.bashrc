#!/bin/bash 
# Load colors
. ~/.bash/colors

# Load functions
. ~/.bash/functions

# Vi Bash command mode
set -o vi

# Notify immediatly on bg job completion
set -o notify

# Case insensitive
shopt -s nocaseglob

# Setting up editor 
export EDITOR=/usr/bin/vim

# Setting pager to the vimpager
export PAGER=vimpager
alias less=$PAGER

# Add user bins to path, prioritize Homebrew's above anything else
export PATH=/usr/local/bin:$PATH:~/.bin:/usr/local/lib/node:/usr/local/sbin

# Term
export TERM=screen-256color

. ~/.bash/completion/git

# Load PS1 theme
. ~/.bash/theme

# Load aliases at end to not conflict with anything
. ~/.bash/aliases

# rvm
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
