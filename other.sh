#!/bin/sh

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

yay -S --needed otf-nerd-fonts-fira-code protonvpn-cli-ng zork1 zork2 zork3

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

source $HOME/.cargo/env

cargo install cargo-update
cargo install starship

curl -sLf https://spacevim.org/install.sh | bash
nvim
