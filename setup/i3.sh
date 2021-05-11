#!/bin/sh

printf '\n#bindsym $mod+Shift+s exec i3lock -c 222222\n#bindcode $mod+40 exec "rofi -modi drun,run -show drun"\n#bindsym $mod+Shift+d exec "prime-run rofi -modi drun,run -show drun"\n#bindsym $mod+Shift+g exec "lutris"\n#bar {\n\t#position top\n#}\n' >> ~/.config/i3/config
