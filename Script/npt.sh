#Script als Root ausführen!

apt update && sudo apt -y install ntp ntpdate
timedatectl set-ntp off

read -p "Wie lautet Ihre Standortnummer?:" so

echo "server 10.140.$so.1 prefer iburst" >> /etc/ntp.conf"

sed '/^pool/d' /etc/ntp.conf > /dev/null 2>&1

systemctl restart ntp
