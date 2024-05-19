#!/bin/bash

# Install Apache and PHP
sudo apt-get update && sudo apt-get install -y apache2 php libapache2-mod-php

# Change ownership of web root directory
sudo chown -R thecodeholic:thecodeholic /var/www/html/

# Install MySQL Server and set root password
sudo apt-get install -y mysql-server
sudo mysql -u root -p -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'p';"

# Disable MySQL password validation
sudo mysql -u root -p -e "SET GLOBAL validate_password_length = 0;"
sudo mysql -u root -p -e "SET GLOBAL validate_password_mixed_case_count = 0;"
sudo mysql -u root -p -e "SET GLOBAL validate_password_number_count = 0;"
sudo mysql -u root -p -e "SET GLOBAL validate_password_policy = 0;"
sudo mysql -u root -p -e "SET GLOBAL validate_password_special_char_count = 0;"

# Install phpMyAdmin
sudo apt-get install -y phpmyadmin

# Create a symbolic link to phpMyAdmin
sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
