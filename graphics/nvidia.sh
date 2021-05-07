#!/bin/sh

sudo pacman -S nvidia nvidia-utils lib32-nvidia-utils nvidia-settings nvidia-utils-openrc libva-vdpau-driver libva-utils vdpauinfo

sudo rc-update add nvidia-persistenced
