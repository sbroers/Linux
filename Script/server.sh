apt update && apt upgrade -y
echo 'GRUB_CMDLINE_LINUX="netcfg/do_not_use_netplan=true"' >> /etc/default/grub
echo 'GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0"' >> /etc/default/grub
update grub
rm /etc/netplan/*
apt install ifupdown
echo "auto lo" >> /etc/network/interfaces
echo "iface lo inet loopback" >> /etc/network/interfaces
echo "#" >> /etc/network/interfaces
echo "auto eth0" >> /etc/network/interfaces
echo "iface eth0 inet dhcp" >> /etc/network/interfaces
chmod -x /etc/update-motd.d/*
wget https://raw.githubusercontent.com/sbroers/Linux/master/Script/wbslogo
mv wbslogo /etc/motd
reboot now
