# Instalar apache
sudo apt update
sudo apt install apache2 -y

# Substituir index.html original por outro
# Fonte: https://ubuntu.com/tutorials/install-and-configure-apache#3-creating-your-own-website
sudo cp index.html /var/www/html/index.html
