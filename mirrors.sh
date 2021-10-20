#!/bin/sh

sudo reflector --verbose --latest 64 --sort rate --save /etc/pacman.d/mirrorlist-arch
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
if [[ ! -f /etc/pacman.d/mirrorlist.pacnew ]]; then
    sudo curl https://gitea.artixlinux.org/packagesA/artix-mirrorlist/raw/branch/master/trunk/mirrorlist -o /etc/pacman.d/mirrorlist.pacnew
fi
sudo su -c "rankmirrors -v /etc/pacman.d/mirrorlist.pacnew > /etc/pacman.d/mirrorlist"
sudo mv /etc/pacman.d/mirrorlist.pacnew /etc/pacman.d/mirrorlist.new
