#!/bin/bash
service mariadb start
mariadb -u root -e "CREATE DATABASE ${MARIADB_NAME} ;"
mariadb -u root -e "CREATE USER '${MDB_USER}'@'%' IDENTIFIED BY '${MDB_PW}' ;" 
mariadb -u root -e "GRANT ALL PRIVILEGES ON ${MARIADB_NAME}.* TO '${MDB_USER}'@'%' ;"
mariadb -u root -e "FLUSH PRIVILEGES;"
service mariadb stop
mariadbd