sudo apt update && sudo apt install apache2 mysql-server libapache2-mod-php php-gd php-json php-mysql php-curl php-mbstring php-intl php-imagick php-xml php-zip unzip -y
cd ~
sudo wget https://download.nextcloud.com/server/releases/latest-17.zip
sudo unzip latest-17.zip
sudo mv ./nextcloud/* /var/www/html
sudo chown -R www-data:www-data /var/www/html
sudo systemctl restart apache2
mysql -uroot -p
create database nextcloud;
create user nextcloud@localhost identified by ‘mein_passwort’;
grant all privileges on nextcloud.* to nextcloud@localhost;
flush privileges;
exit;
