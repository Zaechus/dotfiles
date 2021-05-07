#!/bin/sh

sudo pacman -S nvidia nvidia-utils lib32-nvidia-utils nvidia-settings nvidia-utils-openrc libva-vdpau-driver libva-utils vdpauinfo lib32-libva-vdpau-driver

sudo rc-update add nvidia-persistenced

sudo printf '\n#nvidia-drm.modeset=1\n' >> /etc/default/grub
sudo nvim /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg
