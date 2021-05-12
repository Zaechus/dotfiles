#!/bin/sh

sudo pacman -S xf86-video-ati mesa lib32-mesa amdvlk lib32-amdvlk vulkan-icd-loader lib32-vulkan-icd-loader

sudo bash -c "echo \"blacklist radeon\" > /etc/modprobe.d/blacklist.conf"

sudo bash -c "echo \"#radeon.si_support=0 radeon.cik_support=0 amdgpu.si_support=1 amdgpu.cik_support=1 radeon.dpm=0\" >> /etc/default/grub"
sudo nvim /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
