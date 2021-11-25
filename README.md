# My dotfiles

Using scripts and GNU `stow` to backup my dotfiles

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
│     └── sway
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
./graphics/amd.sh
./setup/setup.sh
```

### Enable Esync
Add `USERNAME hard nofile 524288` to `/etc/security/limits.conf`.
