# Instalar WordPress
sudo apt install wordpress

# Substituir wordpress.conf com ficheiro "já configurado"
sudo cp wordpress.conf /etc/apache2/sites-available/wordpress.conf

# Ligar o site
sudo a2ensite wordpress

# Reiniciar o serviço do Apache
sudo systemctl reload apache2.service

# Obter endereço IP e definir como variável
IP_ADDRESS=$(ip a | grep -oE '192[0-9.]+(?!255)' | head -n 1)

# Copiar ficheiro de configuração e adaptá-lo ao IP atual da máquina
sudo cp config-.php /etc/wordpress/config-$IP_ADDRESS.php
