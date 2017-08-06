DBUSER=root
DBPASSWD=root

echo "\n--- MYSQL ---\n"
sudo apt-get install -y debconf-utils -y > /dev/null
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password $DBPASSWD"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $DBPASSWD"
sudo apt-get install -y mysql-server mysql-client
sudo sed -i 's/bind-address/bind-address = 0.0.0.0#/' /etc/mysql/mysql.conf.d/mysqld.cnf
sudo mysql -u root -proot -e "GRANT ALL PRIVILEGES ON *.* TO '$DBUSER'@'%' IDENTIFIED BY '$DBUSER' WITH GRANT OPTION; FLUSH PRIVILEGES;"
sudo echo 'character-set-server=utf8' >> /etc/mysql/mysql.conf.d/mysqld.cnf
sudo echo 'collation-server=utf8_general_ci' >> /etc/mysql/mysql.conf.d/mysqld.cnf
sudo service mysql restart
