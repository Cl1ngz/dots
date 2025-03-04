#
# ~/.bash_profile
#
export EDITOR="nvim"

# Set Zen Browser as the default web browser
export BROWSER="zen-browser"
export XDG_BROWSER="zen-browser"

# Set the default terminal emulator
export TERMINAL="alacritty"

# Set the default file manager
export FILE_MANAGER="thunar"

# Set the default music player
# export MUSIC_PLAYER="mpd"

# Set the default video player
export VIDEO_PLAYER="vlc"

# Set the default image viewer
export IMAGE_VIEWER="nsxiv"

# Set the default document viewer
#export DOCUMENT_VIEWER=""

# Set the default text editor
export TEXT_EDITOR="nvim"

# Set the default PDF viewer
export PDF_VIEWER="zen-browser"

[[ -f ~/.bashrc ]] && . ~/.bashrc

# MPD daemon start (if no other user instance exists)
[ ! -s ~/.config/mpd/pid ] && mpd
