#!/bin/sh

sudo pacman -S nvidia nvidia-utils lib32-nvidia-utils nvidia-settings nvidia-utils-openrc

sudo rc-update add nvidia-utils
