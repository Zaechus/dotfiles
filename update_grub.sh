#!/bin/sh

sudo grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB --removable --recheck
sudo grub-mkconfig -o /boot/grub/grub.cfg
