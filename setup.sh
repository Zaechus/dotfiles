#!/bin/sh

mkdir ~/Code ~/Documents ~/Images
cd ~/Code
mkdir go mygithub tmp
cd ~/Documents
mkdir tmp
cd ~/Images
mkdir Disk
cd ~

sudo useradd -m lewxam
echo "lewxam"
sudo passwd lewxam

sudo useradd -m xamax
echo "xamax"
sudo passwd xamax

sudo usermod -a -G video lewxam
sudo usermod -a -G games lewxam
sudo usermod -a -G video xamax
