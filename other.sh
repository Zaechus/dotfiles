#!/bin/sh

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

yay -Syu --needed otf-nerd-fonts-fira-code protonvpn-cli-ng zork1 zork2 zork3

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

source $HOME/.cargo/env

cargo install cargo-update
cargo install starship

source ~/.zshrc
source ~/.zprofile
mkdir ~/.zfunc
rustup completions zsh > ~/.zfunc/_rustup
rustup completions zsh cargo > ~/.zfunc/_cargo
exec zsh

curl -sLf https://spacevim.org/install.sh | bash
nvim
