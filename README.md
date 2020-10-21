# My dotfiles

Using GNU `stow` to backup my dotfiles

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

### Additions

```
cd ~/.dotfiles
mkdir DIRNAME
# mkdir DIRNAME/SUBDIRNAME
stow DIRNAME
```
