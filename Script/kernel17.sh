sudo apt update

cd /tmp
wget -c http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.17.7/linux-headers-4.17.7-041707_4.17.7-041707.201807171133_all.deb
wget -c http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.17.7/linux-modules-4.17.7-041707-generic_4.17.7-041707.201807171133_amd64.deb
wget -c http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.17.7/linux-image-unsigned-4.17.7-041707-generic_4.17.7-041707.201807171133_amd64.deb

sudo dpkg -i *.deb
sudo reboot
