#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

[[ -s "$HOME/.qfc/bin/qfc.sh" ]] && source "$HOME/.qfc/bin/qfc.sh"

# Alliases
# i'm not longer using ls eza feels better
alias ls='eza --hyperlink --icons'
# bat is nice
alias cat='bat --paging=never'
alias grep='grep --color=auto'
alias date='date "+%d-%m-%Y %H:%M:%S"'

alias v='nvim'
alias vi='nvim'
alias vim='nvim'
