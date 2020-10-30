#!/bin/sh

sudo pacman -Syyuu --needed alacritty amd-ucode artix-backgrounds autoconf automake backlight-openrc base bat bemenu binutils bison brightnessctl btrfs-progs clang cmake connman-openrc cryptsetup deno dhcpcd dotnet-runtime dotnet-sdk efibootmgr esysusers evince exa fakeroot fd file findutils firefox-developer-edition flex gawk gcc gettext git go go-tools grep groff gzip imv intel-ucode libtool links linux linux-firmware linux-headers luakit m4 make man-db mpg123 mpv neofetch neovim noto-fonts noto-fonts-emoji npm nuget ocl-icd openrc openrc-zsh-completions otf-fira-mono otf-fira-sans otf-font-awesome pacman patch pkgconf pulseaudio pulseaudio-alsa pulsemixer python python-pip python-pynvim refind ripgrep sed stow sudo sway swaylock texinfo texlive-core tmux tokei ttf-liberation typescript unzip waybar which wl-clipboard woff2-fira-code wpa_supplicant zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting

sudo rc-update add backlight

sudo nvim /etc/connman/main.conf
