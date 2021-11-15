#!/bin/sh

mkdir ~/Code ~/Documents ~/Images
cd ~/Code
mkdir go mygithub tmp
cd ~/Documents
mkdir tmp
cd ~/Images
mkdir Disk
cd ~

sudo nvim /etc/elogind/logind.conf

sudo chmod 775 /var/games
