#!/bin/bash
service mariadb start
mariadb -u root -e "CREATE DATABASE rmdb ;"
mariadb -u root -e "CREATE USER 'zanejar'@'%' IDENTIFIED BY 'prochazka' ;" 
mariadb -u root -e "REQUIRE NOT REGEXP 'admin|Admin|administrator|Administrator' ;"
mariadb -u root -e "GRANT ALL PRIVILEGES ON rickdb.* TO 'zanejar'@'%' ;"
mariadb -u root -e "FLUSH PRIVILEGES;"