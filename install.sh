#!/bin/bash

# Actualiza el sistema
sudo apt update
sudo apt upgrade -y

# Instala Apache2
sudo apt install apache2 -y

# Instala PHP y los módulos necesarios
sudo apt install php libapache2-mod-php php-mysql -y

# Instala MariaDB y configura una contraseña para el usuario root de MySQL
sudo apt install mariadb-server -y
sudo mysql_secure_installation

# Instala phpMyAdmin y configura el acceso
sudo apt install phpmyadmin -y

# Habilita el módulo PHP en Apache2
sudo a2enmod php

# Habilita las extensiones PHP necesarias para phpMyAdmin
sudo phpenmod mbstring
sudo phpenmod zip

# Reinicia Apache2 para aplicar los cambios
sudo systemctl restart apache2

echo "Pila LAN instalada con éxito. Puedes acceder a phpMyAdmin en http://localhost/phpmyadmin"

