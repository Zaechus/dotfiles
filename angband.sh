#!/bin/sh

sudo chgrp -R games /var/games/angband
sudo chmod -R 775 /var/games/angband
cp -r /var/games/angband ./
sudo chgrp -R games angband
sudo chmod -R 775 angband
