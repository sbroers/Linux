apt update && apt upgrade -y
echo 'GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0"' >> /etc/default/grub
update-grub
wget https://raw.githubusercontent.com/sbroers/Linux/master/Script/wallpaper.png
wget https://raw.githubusercontent.com/sbroers/Linux/master/Script/logo.png
wget https://raw.githubusercontent.com/sbroers/Linux/master/Script/wbswall.jpg
mv wallpaper.png /usr/share/plymouth/themes/xubuntu-logo/
mv logo.png /usr/share/plymouth/themes/xubuntu-logo/
mv wbswall.png /usr/share/xfce4/backdrops/xubuntu-bionic.png
reboot now
