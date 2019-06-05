sudo echo "hv_vmbus" >> nano /etc/initramfs-tools/modules
sudo echo "hv_storvsc" >> nano /etc/initramfs-tools/modules
sudo echo "hv_blkvsc" >> nano /etc/initramfs-tools/modules
sudo echo "hv_netvsc" >> nano /etc/initramfs-tools/modules
#
sudo apt update && install linux-virtual linux-cloud-tools-virtual linux-tools-virtual
update-initramfs -u
sudo reboot now
