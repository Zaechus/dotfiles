#!/bin/sh

mkdir ~/Code ~/Documents ~/Images
cd ~/Code
mkdir go mygithub tmp
cd ~/Documents
mkdir tmp
cd ~/Images
mkdir Disk
cd ~

echo "bacchus"
sudo useradd -m bacchus && sudo passwd bacchus

echo "thor"
sudo useradd -m thor && sudo passwd thor

sudo usermod -a -G video bacchus
sudo usermod -a -G games bacchus
sudo usermod -a -G lp bacchus
sudo usermod -a -G audio bacchus
sudo usermod -a -G video thor

sudo chmod 775 /var/games

sudo cp /etc/X11/xinit/xinitrc /home/bacchus/.xinitrc
sudo chown bacchus:bacchus /home/bacchus/.xinitrc
sudo nvim /home/bacchus/.xinitrc
sudo cp nostow/.zshrc /home/bacchus/
sudo chown bacchus:bacchus /home/bacchus/.zshrc

sudo cp /etc/X11/xinit/xinitrc /home/thor/.xinitrc
sudo chown thor:thor /home/thor/.xinitrc
sudo nvim /home/thor/.xinitrc
