#!/bin/bash

# Raspberry Pi Default Server Config - v1.0
# 03-May-2023

# Update installation
sudo apt update -y && sudo apt upgrade -y

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

# Always require password for sudo
sed -i "s/pi/$USER/g" /etc/sudoers.d/010_pi-nopasswd
sed -i 's/NOPASSWD/PASSWD/g' /etc/sudoers.d/010_pi-nopasswd

# Reboot
echo "Please enter password to reboot to complete installation:"
sudo reboot
