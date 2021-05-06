#!/bin/sh

sudo pacman -Syyuu --needed alacritty amd-ucode artix-backgrounds backlight-openrc bat bemenu brightnessctl clang cmake dotnet-runtime dotnet-sdk evince exa fd firefox-developer-edition git go go-tools imv links mpv neofetch neovim noto-fonts noto-fonts-emoji npm nuget openrc-zsh-completions otf-fira-mono otf-fira-sans otf-font-awesome pulseaudio pulseaudio-alsa python python-pip python-pynvim ripgrep stow sway swaylock grim texlive-core tmux tokei ttf-liberation typescript unzip waybar wl-clipboard woff2-fira-code zsh-autosuggestions zsh-completions zsh-syntax-highlighting pulseaudio-alsa qemu aria2 cowsay yasm wget edk2-ovmf

sudo rc-update add backlight

sudo nvim /etc/connman/main.conf
