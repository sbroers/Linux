sudo apt update && sudo apt -y install ntp ntpdate
sudo timedatectl set-ntp off

read -p "Wie lautet Ihre Standortnummer?:" so

sudo echo "server 10.140.$so.1 prefer iburst" >> /etc/ntp.conf"

sudo systemctl restart ntp
