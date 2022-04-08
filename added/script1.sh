#!/bin/bash
sudo docker exec autolamp  mysql -uroot -e "CREATE USER 'trinat2'@'localhost' IDENTIFIED BY '1234';"
sudo docker exec autolamp  mysql -uroot -e "GRANT ALL PRIVILEGES ON *.* TO 'trinat2'@'localhost';"
sudo docker exec autolamp  mysql -uroot -e "create database bad2"
sudo docker exec autolamp  mysql -uroot -e "use bad2; CREATE TABLE tb32 ("id" int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT, hum2 varchar(70) COLLATE utf8mb4_spanish_ci NOT NULL, "fecha" datetime NOT NULL DEFAULT CURRENT_TIMESTAMP);"
