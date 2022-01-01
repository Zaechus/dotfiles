#!/bin/sh

sudo pacman -Syyuu --needed alacritty backlight-openrc bat bemenu clang cmake exa fd go go-tools imv links mpv noto-fonts noto-fonts-emoji npm nuget openrc-zsh-completions otf-fira-mono otf-fira-sans otf-font-awesome pulseaudio pulseaudio-alsa python-pip python-pynvim ripgrep stow sway swaylock grim texlive-core tokei ttf-liberation typescript unzip wl-clipboard woff2-fira-code zsh-autosuggestions zsh-completions zsh-syntax-highlighting pulseaudio-alsa qemu aria2 cowsay yasm edk2-ovmf man-db pacman-contrib screen

sudo rc-update add backlight

sudo nvim /etc/connman/main.conf

sudo nvim /etc/rc.conf

sudo hwclock --systohc
