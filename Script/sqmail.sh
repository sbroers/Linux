mkdir -p /var/www/html/sqmail
wget -qO- https://netix.dl.sourceforge.net/project/squirrelmail/stable/1.4.22/squirrelmail-webmail-1.4.22.tar.gz | tar xz -C /var/www/html/sqmail --strip-components 1 && chown -R www-data /var/www/html/sqmail
