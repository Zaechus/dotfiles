#!/bin/sh

sudo pacman -S --needed angband discord dosbox gnuchess gnugo libretro-genesis-plus-gx libretro-mgba libretro-mupen64plus-next libretro-nestopia libretro-parallel-n64 libretro-snes9x retroarch rogue tk xorg-server xorg-xinit lxqt

sudo pacman -Rns qterminal lxqt-about lxqt-archiver

paru -S minecraft-launcher

cargo install kingslayer
cargo install gameoflife
