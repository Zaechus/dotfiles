#!/bin/sh

# stow -d ./angband/.angband/Angband/ -t $HOME/.angband/Angband/customize customize

cp ~/.dotfiles/angband/customize/* ~/.angband/Angband/customize/

stow alacritty git vim wayland zsh zsh-main
