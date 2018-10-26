#!/bin/bash
# Proxy Script für Linux Distributionen, die die /etc/environment verwenden
#
# Als Root ausführen!
#
read -p "Bitte geben Sie Ihre Standort-Nr. ein:" eingabe
#
echo "export http_proxy=http://10.140.$eingabe.10:3128" >> /etc/environment
echo "export https_proxy=http://10.140.$eingabe.10:3128" >> /etc/environment
echo "export ftp_proxy=http://10.140.$eingabe.10:3128" >> /etc/environment
#
echo "Proxy einstellungen wurden erfolgreich übernommen!"
echo "Bitte das System neustarten"
