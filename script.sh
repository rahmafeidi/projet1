#!/bin/sh
sudo apt-get -y  update 
sudo apt-get -y install apache2  libapache2-mod-php mysql-server
sudo a2enmod php7.2
sudo systemctl restart apache2
sudo chmod 777 -R /var/www/html/
sudo echo  "<?php  phpinfo();  ?> " > /var/www/html/info.php 
 sudo mysql < mysqltest > /var/www/html/info.php 
sudo mysqldump --user=root --databases db1 > sauvgarde.sql

