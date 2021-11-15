#!/bin/sh

cp /usr/share/angband/angband/customize/* ~/.angband/Angband/customize/
cp ~/.dotfiles/angband/customize/* ~/.angband/Angband/customize/

stow alacritty git vim wayland xorg zsh
