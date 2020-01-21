#Script als Root ausführen!

apt update && sudo apt -y install ntp ntpdate
timedatectl set-ntp off

read -p "Wie lautet Ihre Standortnummer?:" so

echo "server 10.140.$so.1 prefer iburst" >> /etc/ntp.conf"

sed -i '/^pool/d' /etc/ntp.conf

systemctl restart ntp
