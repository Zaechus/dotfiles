#!/bin/sh

pacman -Qqe > incoming.txt
python check.py trusted.txt incoming.txt
