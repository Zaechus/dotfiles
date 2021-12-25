#!/bin/sh

sudo pacman -S nvidia nvidia-utils lib32-nvidia-utils nvidia-utils-openrc libva-utils vdpauinfo nvidia-prime nvtop

sudo rc-update add nvidia-persistenced

sudo su -c "printf '\n#nvidia-drm.modeset=1\n' >> /etc/default/grub"
sudo nvim /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg
