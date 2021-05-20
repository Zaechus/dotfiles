#!/bin/sh

chgrp -R games /var/games/angband
chmod -R 775 /var/games/angband
cp -r /var/games/angband ./
chgrp -R games angband
chmod -R 775 angband
