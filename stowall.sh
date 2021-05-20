#!/bin/sh

<<<<<<< HEAD
sudo chgrp -R games angband
sudo chmod -R 775 angband
mkdir /var/games/angband
stow -t /var/games/angband angband
sudo chgrp -R games /var/games/angband
sudo chmod -R 775 /var/games/angband
stow -d /var/games/ -t $HOME angband
=======
stow -t /var/games angband
sudo chown -R root:games /var/games/.angband
sudo chmod -R 775 /var/games/.angband
>>>>>>> parent of ecdd71d (potential angband solution)

stow alacritty git vim wayland zsh zsh-main
