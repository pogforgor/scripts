# Instalar WordPress
sudo apt install wordpress

# Substituir wordpress.conf com ficheiro "já configurado"
sudo cp wordpress.conf /etc/apache2/sites-available/wordpress.conf

# Ligar o site
sudo a2ensite wordpress

# Reiniciar o serviço do Apache
sudo systemctl reload apache2.service

