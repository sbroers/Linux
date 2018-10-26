#!/bin/bash
# Proxy Script für Linux Distributionen, die die /etc/environment verwenden
#
# Als Root ausführen!
#
echo "Proxyformat: http://000.000.000.000:3128"
read -p "Bitte geben Sie Ihre Proxy Adresse ein:" eingabe
#
echo "export http_proxy=$eingabe" >> /etc/environment
echo "export https_proxy=$eingabe" >> /etc/environment
echo "export ftp_proxy=$eingabe" >> /etc/environment
#
echo "Proxy einstellungen wurden erfolgreich übernommen!"
