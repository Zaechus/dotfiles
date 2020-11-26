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

sudo cp /etc/X11/xinit/xinitrc /home/lewxam/.xinitrc
sudo chown lewxam:lewxam /home/lewxam/.xinitrc
sudo nvim /home/lewxam/.xinitrc
sudo cp nostow/.zshrc /home/lewxam/
sudo chown lewxam:lewxam /home/lewxam/.zshrc

sudo cp /etc/X11/xinit/xinitrc /home/xamax/.xinitrc
sudo chown xamax:xamax /home/xamax/.xinitrc
sudo nvim /home/xamax/.xinitrc
