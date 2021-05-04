# My dotfiles

Using GNU `stow` to backup my dotfiles

## Usage
```
./stowall.sh
```

## Additions

### Example Layout
```
$HOME/.dotfiles
├── alacritty
│  └── .config
│     └── alacritty
├── git
│  └── .gitconfig
├── wayland
│  └── .config
│     ├── sway
│     └── waybar
└── zsh
   ├── .zprofile
   └── .zshrc
```

### Adding
```
cd ~/.dotfiles
mkdir DIRNAME
mv {DIR OR FILE IN ~} DIRNAME/
stow DIRNAME
```

## Misc setup
```
./setup/packages.sh
./setup/other.sh
./setup/games.sh
./setup/wine.sh
./graphics/nvidia.sh
./setup/setup.sh

./setup/big.sh
```

### Enable Esync
Add `USERNAME hard nofile 524288` to `/etc/security/limits.conf`.

### Gaming performance settings
```
xrandr --output <OUTPUT> --mode XXXXxXXXX --rate XX.XX
```
