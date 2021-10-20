#!/bin/sh

sudo pacman -Syyuu --needed alacritty artix-backgrounds backlight-openrc bat bemenu bottom brightnessctl clang cmake dotnet-runtime dotnet-sdk exa fd firefox-developer-edition go go-tools imv links mpv noto-fonts noto-fonts-emoji npm nuget openrc-zsh-completions otf-fira-mono otf-fira-sans otf-font-awesome pulseaudio pulseaudio-alsa python-pip python-pynvim ripgrep stow sway swaylock grim texlive-core tmux tokei ttf-liberation typescript unzip waybar wl-clipboard woff2-fira-code zsh-autosuggestions zsh-completions zsh-syntax-highlighting pulseaudio-alsa qemu aria2 cowsay yasm wget edk2-ovmf man-db ntp prettier rsync reflector pacman-contrib

sudo rc-update add backlight

sudo nvim /etc/connman/main.conf

sudo nvim /etc/rc.conf

sudo ntpd -qg
sudo hwclock --systohc
