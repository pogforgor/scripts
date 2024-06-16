#Instalar apache

sudo apt update
sudo apt install apache2
sudo cp index.html /var/www/html/index.html
sudo nano /var/www/html/index.html

#Instalar MySQL

sudo apt install mysql-server -y
sudo mysql -u root -p

CREATE DATABASE wordpress;
CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'd3a18ca664fe83ec2014daa915419de0';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost';
FLUSH PRIVILEGES;
EXIT;
