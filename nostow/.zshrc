# Launch sc2 with special parameters
alias sc2="xset r rate 150 200 && xrandr -s 1280x720 && ( WINEPREFIX=~/Games/starcraft-ii nohup wine ~/Games/starcraft-ii/drive_c/users/lewxam/Downloads/StarCraft-II-Setup.exe  > /dev/null & )"
alias unsc2="xset r rate 660 25 && xrandr -s 1366x768"

#alias bw="unsc2 && ( WINEPREFIX=~/Games/starcraft-remastered nohup wine ~/Games/starcraft-remastered/drive_c/Program\ Files\ \(x86\)/StarCraft/StarCraft\ Launcher.exe > /dev/null & )"

alias wowtbc="unsc2 && ( WINEPREFIX=~/Games/world-of-warcraft nohup wine ~/Games/world-of-warcraft/drive_c/users/lewxam/WoWTBC/Wow.exe > /dev/null & )"
alias hstone="unsc2 && ( WINEPREFIX=~/Games/hearthstone nohup wine ~/Games/hearthstone/drive_c/Program\ Files\ \(x86\)/Hearthstone/Hearthstone.exe > /dev/null & )"
