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
./gaming.sh
./setup.sh
```
