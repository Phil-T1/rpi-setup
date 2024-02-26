#!/bin/bash

# Raspberry Pi Default Server Config - v1.1
# 26-Feb-2024

# Update installation
sudo apt update && sudo apt upgrade -y

# Increase SWAP size to 1024 MB
sudo dphys-swapfile swapoff
sudo sed -i "s/^CONF_SWAPSIZE=.*/CONF_SWAPSIZE=1024/" /etc/dphys-swapfile
sudo dphys-swapfile swapon

# Install packages
sudo apt install -y git fail2ban ufw

# Install docker
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo rm get-docker.sh
sudo usermod -aG docker $USER

# Install micro text editor (and config)
sudo curl https://getmic.ro | sudo bash
sudo mv micro /usr/bin
sudo git clone https://github.com/Phil-T1/micro-config /home/$USER/.config/micro

# Create standard project dirs
sudo mkdir -p /home/$USER/projects/tst
sudo mkdir /home/$USER/projects/prd
sudo mkdir /home/$USER/projects/dev

# Make all the directories user's
sudo chown -R $USER ~/projects

# No password for sudo
sudo sed -i "s/pi/$USER/g" /etc/sudoers.d/010_pi-nopasswd

# Set DNS host address
# !

# Reboot
echo "Please reboot now to complete the setup..."
