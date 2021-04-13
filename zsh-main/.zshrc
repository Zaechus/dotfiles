# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit

# pip zsh completion start
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] 2>/dev/null ))
}
compctl -K _pip_completion pip
# pip zsh completion end

fpath+=~/.zfunc
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export EDITOR=nvim

export MOZ_ENABLE_WAYLAND=1
export SDL_VIDEODRIVER=wayland
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct

export DENO_INSTALL="$HOME/.deno"
export PATH="$PATH:$DENO_INSTALL/bin"

export GOPATH="$HOME/Code/go"
export PATH="$PATH:$GOPATH/bin"

# Wasmer
export WASMER_DIR="$HOME/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

qemu-create-img() {
    # <name.img> <sizeG>
    qemu-img create -f qcow2 $1 $2
}

qemu-boot-img() {
    # <name.img>
    qemu-system-x86_64 -m 2048 -enable-kvm -vga std -smp 3 -net nic -net user -hda $1
}

qemu-boot-iso() {
    # <name.img> <name.iso>
    qemu-system-x86_64 -m 2048 -boot d -enable-kvm -vga std -smp 3 -net nic -net user -hda $1 -cdrom $2
}

source $HOME/.zsh_aliases

eval "$(starship init zsh)"
