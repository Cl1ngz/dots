#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
eval "$(starship init bash)"

source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

[[ -s "$HOME/.qfc/bin/qfc.sh" ]] && source "$HOME/.qfc/bin/qfc.sh"

# MPD daemon start (if no other user instance exists)
# [ ! -s ~/.config/mpd/pid ] && mpd

alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias date='date "+%d-%m-%Y %H:%M:%S"'
