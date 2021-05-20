#!/bin/sh

stow -t /var/games angband
sudo chown -R root:games /var/games/.angband
sudo chmod -R 775 /var/games/.angband

stow alacritty git vim wayland zsh zsh-main
