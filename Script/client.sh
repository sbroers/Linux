apt update && apt upgrade -y
echo 'GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0"' >> /etc/default/grub
update-grub
wget https://raw.githubusercontent.com/sbroers/Linux/master/Script/wallpaper.png
wget https://raw.githubusercontent.com/sbroers/Linux/master/Script/logo.png
mv wallpaper.png /usr/share/plymouth/themes/xubuntu-logo/
mv logo.png /usr/share/plymouth/themes/xubuntu-logo/
reboot now
