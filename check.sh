#!/bin/sh

pacman -Qqe > incoming.txt
diff -I "intel" trusted.txt incoming.txt | bat
