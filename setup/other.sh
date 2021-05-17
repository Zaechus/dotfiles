#!/bin/sh

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

source $HOME/.cargo/env

if [ ! -d "./paru-bin" ]
then
    git clone https://aur.archlinux.org/paru-bin.git
    cd paru-bin
    makepkg -si
    cd ..
    paru -Syu --needed otf-nerd-fonts-fira-code zork1 zork2 zork3 ncpamixer protonvpn-cli-ng-git
fi

cargo install topgrade
cargo install cargo-update
cargo install starship
cargo install bottom

dotnet tool install -g dotnet-format

[ ! -d .zfunc ] && mkdir ~/.zfunc
source ~/.zprofile
rustup component add llvm-tools-preview rls rust-analysis rust-src
rustup target add wasm32-wasi wasm32-unknown-unknown
rustup completions zsh > ~/.zfunc/_rustup
rustup completions zsh cargo > ~/.zfunc/_cargo
rustup +nightly component add rust-src
rustup +nightly component add rust-analyzer-preview
starship completions zsh > ~/.zfunc/_starship

cd ~
mkdir -p ~/.local/share/nvim/site/pack/plugins/start
git clone https://github.com/rust-lang/rust.vim ~/.local/share/nvim/site/pack/plugins/start/rust.vim
git clone https://github.com/vim-syntastic/syntastic.git ~/.local/share/nvim/site/pack/plugins/start/syntastic
git clone https://github.com/preservim/nerdtree.git ~/.local/share/nvim/site/pack/plugins/start/nerdtree
git clone https://github.com/preservim/nerdcommenter.git ~/.local/share/nvim/site/pack/plugins/start/nerdcommenter
git clone https://github.com/airblade/vim-gitgutter.git ~/.local/share/nvim/site/pack/plugins/start/vim-gitgutter
git clone https://github.com/itchyny/lightline.vim ~/.local/share/nvim/site/pack/plugins/start/lightline
git clone https://github.com/morhetz/gruvbox.git ~/.local/share/nvim/site/pack/plugins/start/gruvbox

nvim ~/.zprofile

[ -f ~/.profile ] && rm ~/.profile

sudo pacman -S pulseaudio-bluetooth bluez-utils bluez-openrc
sudo rc-update add bluetoothd
sudo connmanctl enable bluetooth
