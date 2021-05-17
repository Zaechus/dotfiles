# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

source $HOME/.zsh_aliases

alias rofidrun="rofi -modi drun,run -show drun"

alias mvreplay="mv ~/Downloads/*.SC2Replay ~/Games/starcraft-ii/drive_c/users/$USERNAME/My\ Documents/StarCraft\ II/Accounts/302557793/1-S2-1-5375338/Replays/Multiplayer/"
alias sc2cfg="xset r rate 150 150"
alias unsc2="xset r rate 200 60"
