#!/bin/bash
# Powerline Installations Script für Ubuntu 18.04

sudo apt update
sudo apt install powerline fonts-powerline

echo "# Powerline" >> /root/.bashrc
echo "if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then" >> /root/.bashrc
echo "powerline-daemon -q" >> /root/.bashrc
echo "POWERLINE_BASH_CONTINUATION=1 " >> /root/.bashrc
echo "POWERLINE_BASH_SELECT=1" >> /root/.bashrc
echo "source /usr/share/powerline/bindings/bash/powerline.sh" >> /root/.bashrc
echo "fi " >> /root/.bashrc

echo "# Powerline" >> /home/$USER/.bashrc
echo "if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then" >> /home/$USER/.bashrc
echo "powerline-daemon -q" >> /home/$USER/.bashrc
echo "POWERLINE_BASH_CONTINUATION=1 " >> /home/$USER/.bashrc
echo "POWERLINE_BASH_SELECT=1" >> /home/$USER/.bashrc
echo "source /usr/share/powerline/bindings/bash/powerline.sh" >> /home/$USER/.bashrc
echo "fi " >> /home/$USER/.bashrc

cd /tmp
mkdir -p ~/.fonts
wget https://github.com/powerline/fonts/raw/master/LiberationMono/Literation%20Mono%20Powerline.ttf -O ~/.fonts/Liberation\ Mono\ Powerline.ttf
wget https://github.com/powerline/fonts/raw/master/LiberationMono/Literation%20Mono%20Powerline%20Bold.ttf -O ~/.fonts/Liberation\ Mono\ Powerline\ Bold.ttf
wget https://github.com/powerline/fonts/raw/master/LiberationMono/Literation%20Mono%20Powerline%20Italic.ttf -O ~/.fonts/Liberation\ Mono\ Powerline\ Italic.ttf
wget https://github.com/powerline/fonts/raw/master/LiberationMono/Literation%20Mono%20Powerline%20Bold%20Italic.ttf -O ~/.fonts/Liberation\ Mono\ Powerline\ Bold\ Italic.ttf
fc-cache -vf ~/.fonts

source /home/$USER/.bashrc 2> /dev/null || source /root/.bashrc

echo "Powerline wurde installiert"
