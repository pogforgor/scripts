
# IGNORA LINHAS QUE COMEÇAM COM #
# Entra como root: (sem prompt de password):
sudo mysql -u root -p

# Cria a database "wordpress":
CREATE DATABASE wordpress;

# Cria um utilizador "wordpress":
# NOTA: Cria uma palavra-passe e substitui o 'your_password' com ela!
CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'your_password';

# Permissões
GRANT ALL PRIVILEGES ON wordpress.* TO 'wp_user'@'localhost';
FLUSH PRIVILEGES;
EXIT;

# Fim
 
