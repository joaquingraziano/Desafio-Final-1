#!/bin/bash



# crear el entorno (instalar los servicios necesarios para que corra el producto)

sudo apt update -y
sudo apt install php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip -y
sudo apt install apache2 -y
sudo apt install php libapache2-mod-php php-mysql -y
sudo apt install mysql-server -y

# desplegar la aplicacion

sudo wget https://wordpress.org/latest.tar.gz
sudo tar -xzvf latest.tar.gz
cp wordpress /var/www/html -R


#instalacion docker y configuracion base de datos
sudo apt install docker.io -y
docker run --name database -e MYSQL_ROOT_PASSWORD=o4D46Wc^ItiU -e MYSQL_USER=wpuser -e MYSQL_PASSWORD=abc1234 -e MYSQL_DATABASE=wordpress >

exit 0
