#!/bin/bash

wget http://archive.ubuntu.com/ubuntu/pool/main/q/quagga/quagga-core_1.2.4-4build1_amd64.deb
wget http://archive.ubuntu.com/ubuntu/pool/main/q/quagga/quagga_1.2.4-1_amd64.deb
wget http://archive.ubuntu.com/ubuntu/pool/main/q/quagga/quagga-bgpd_1.2.4-4build1_amd64.deb
wget http://archive.ubuntu.com/ubuntu/pool/main/q/quagga/quagga-isisd_1.2.4-4build1_amd64.deb
wget http://archive.ubuntu.com/ubuntu/pool/main/q/quagga/quagga-ospf6d_1.2.4-4build1_amd64.deb
wget http://archive.ubuntu.com/ubuntu/pool/main/q/quagga/quagga-ospfd_1.2.4-4build1_amd64.deb
wget http://archive.ubuntu.com/ubuntu/pool/main/q/quagga/quagga-pimd_1.2.4-4build1_amd64.deb
wget http://archive.ubuntu.com/ubuntu/pool/main/q/quagga/quagga-ripd_1.2.4-4build1_amd64.deb
wget http://archive.ubuntu.com/ubuntu/pool/main/q/quagga/quagga-ripngd_1.2.4-4build1_amd64.deb

sudo dpkg -i quagga-core_1.2.4-4build1_amd64.deb
sudo dpkg -i quagga-bgpd_1.2.4-4build1_amd64.deb
sudo dpkg -i quagga-isisd_1.2.4-4build1_amd64.deb
sudo dpkg -i quagga-ospf6d_1.2.4-4build1_amd64.deb
sudo dpkg -i quagga-ospfd_1.2.4-4build1_amd64.deb
sudo dpkg -i quagga-pimd_1.2.4-4build1_amd64.deb
sudo dpkg -i quagga-ripd_1.2.4-4build1_amd64.deb
sudo dpkg -i quagga-ripngd_1.2.4-4build1_amd64.deb
