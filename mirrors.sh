#!/bin/sh

sudo reflector --verbose --latest 64 --sort rate --save /etc/pacman.d/mirrorlist-arch
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
sudo curl https://gitea.artixlinux.org/packagesA/artix-mirrorlist/raw/branch/master/trunk/mirrorlist -o /etc/pacman.d/mirrorlist.new
sudo su -c "rankmirrors-artix -v /etc/pacman.d/mirrorlist.new > /etc/pacman.d/mirrorlist"
