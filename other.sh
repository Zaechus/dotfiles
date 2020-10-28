#!/bin/sh

if [ ! -d "./yay" ]
then
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd ..
    yay -Syu --needed otf-nerd-fonts-fira-code protonvpn-cli-ng zork1 zork2 zork3
fi

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

source $HOME/.cargo/env

cargo install cargo-update
cargo install starship
cargo install bottom

[ ! -d .zfunc ] && mkdir ~/.zfunc
source ~/.zprofile
rustup component add llvm-tools-preview rls rust-analysis rust-src
rustup target add wasm32-wasi wasm32-unknown-unknown
rustup completions zsh > ~/.zfunc/_rustup
rustup completions zsh cargo > ~/.zfunc/_cargo
starship completions zsh > ~/.zfunc/_starship

cd ~
curl -sLf https://spacevim.org/install.sh | bash
nvim
nvim ~/.zprofile

[ -f ~/.profile ] && rm ~/.profile
