#!/bin/sh

pacman -Qqe > incoming.txt
diff trusted.txt incoming.txt | bat
