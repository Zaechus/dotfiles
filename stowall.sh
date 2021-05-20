#!/bin/sh

sudo chgrp -R games angband
sudo chmod -R 775 angband
cp -r angband /var/games/
sudo chgrp -R games /var/games/angband
sudo chmod -R 775 /var/games/angband

stow -d /var/games/ -t $HOME angband

stow alacritty git vim wayland zsh zsh-main
