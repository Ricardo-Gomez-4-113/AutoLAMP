
echo "Introduzca en nombre para la base de datos"
            read bdname
            sudo docker exec autodoc  mysql -uroot -e "create database $bdname"
            echo "Introduzca en nombre de la tabla"
            read tlname
            echo "Introduzca en nombre para el usuario"
            read username
            echo "Introduzca la contraseña para el usuario"
            read userpass
            sudo docker exec autodoc  mysql -uroot -e "CREATE USER '$username'@'localhost' IDENTIFIED BY '$userpass';"
            sudo docker exec autodoc  mysql -uroot -e "GRANT ALL PRIVILEGES ON *.* TO '$username'@'localhost';"
            echo "Introduzca en nombre de la variable 1"
            read var1
            echo "Introduzca en nombre de la variable 2"
            read var2
            sudo docker exec autodoc  mysql -uroot -e "use '$bdname'; CREATE TABLE `$tlname` (`id` int(11) NOT NULL,  `$var1` varchar(70) COLLATE utf8mb4_spanish_ci NOT NULL,  `$var2` varchar(70) COLLATE utf8mb4_spanish_ci NOT NULL,  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;"