#!/bin/sh

mkdir ~/Code ~/Documents ~/Images
cd ~/Code
mkdir go mygithub tmp
cd ~/Documents
mkdir tmp
cd ~/Images
mkdir Disk
cd ~

echo "lewxam"
sudo useradd -m lewxam && sudo passwd lewxam

echo "xamax"
sudo useradd -m xamax && sudo passwd xamax

sudo usermod -a -G video lewxam
sudo usermod -a -G games lewxam
sudo usermod -a -G video xamax
