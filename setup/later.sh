#!/bin/sh

sudo pacman -S --needed 0ad libreoffice-fresh signal-desktop gimp dotnet-runtime dotnet-sdk

cargo install wasm-pack
cargo install just

curl -fsSL https://deno.land/x/install/install.sh | sh
