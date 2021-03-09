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
├── vim
│  └── .SpaceVim.d
│     └── init.toml
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
./packages.sh
./other.sh
./games.sh
./wine.sh
./intel.sh
./setup.sh

./big.sh
```

### Enable Esync
Add `USERNAME hard nofile 524288` to `/etc/security/limits.conf`.

### Gaming performance settings
```
xrandr --output <OUTPUT> --mode 1366x768 --rate 60.00
xset r rate 150 150
```
