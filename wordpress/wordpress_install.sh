# Instalar WordPress
sudo apt install wordpress -y

# Substituir wordpress.conf com ficheiro "já configurado"
sudo cp wordpress.conf /etc/apache2/sites-available/wordpress.conf

# Ligar o site
sudo a2ensite wordpress

# Reiniciar o serviço do Apache
sudo systemctl reload apache2.service

# Obter endereço IP, excluir localhost e defini-lo como variável
IP_ADDRESS=$(ip -o -4 addr show | grep -v "127.0.0.1" | awk '{print $4}' | cut -d/ -f1)

# Copiar ficheiro de configuração e adaptá-lo ao IP atual da máquina
sudo cp config-.php /etc/wordpress/config-$IP_ADDRESS.php
