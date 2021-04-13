#!/bin/sh

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

source $HOME/.cargo/env

if [ ! -d "./paru-bin" ]
then
    git clone https://aur.archlinux.org/paru-bin.git
    cd paru-bin
    makepkg -si
    cd ..
    paru -Syu --needed otf-nerd-fonts-fira-code zork1 zork2 zork3 ncpamixer
fi

cargo install topgrade
cargo install cargo-update
cargo install starship
cargo install bottom
cargo install wasm-pack
cargo install just

[ ! -d .zfunc ] && mkdir ~/.zfunc
source ~/.zprofile
rustup component add llvm-tools-preview rls rust-analysis rust-src
rustup target add wasm32-wasi wasm32-unknown-unknown
rustup completions zsh > ~/.zfunc/_rustup
rustup completions zsh cargo > ~/.zfunc/_cargo
starship completions zsh > ~/.zfunc/_starship

curl -fsSL https://deno.land/x/install/install.sh | sh

cd ~
curl -sLf https://spacevim.org/install.sh | bash
nvim
nvim ~/.zprofile

[ -f ~/.profile ] && rm ~/.profile

sudo pacman -S pulseaudio-bluetooth bluez-utils bluez-openrc
sudo rc-update add bluetoothd
sudo connmanctl enable bluetooth
