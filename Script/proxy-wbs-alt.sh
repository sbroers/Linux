#!/bin/bash
# Als Root ausführen!
read -p "Bitte geben Sie Ihre Standort-Nr. ein:" eingabe
#
echo "export http_proxy=http://10.140.$eingabe.10:3128/" >> /etc/bash.bashrc
echo "export https_proxy=http://10.140.$eingabe.10:3128/" >> /etc/bash.bashrc
echo "export ftp_proxy=http://10.140.$eingabe.10:3128/" >> /etc/bash.bashrc
#
touch /etc/apt/apt.conf.d/33proxy
echo "Acquire::http::Proxy \"http://10.140.$eingabe.10:3128\";" >> /etc/apt/apt.conf.d/33proxy
echo "Acquire::https::Proxy \"http://10.140.$eingabe.10:3128\";" >> /etc/apt/apt.conf.d/33proxy
echo "Acquire::ftp::Proxy \"http://10.140.$eingabe.10:3128\";" >> /etc/apt/apt.conf.d/33proxy
#
echo "Proxy einstellungen wurden erfolgreich übernommen!"
