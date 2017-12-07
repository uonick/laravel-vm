DBUSER=root
DBPASSWD=root

echo "--- MYSQL ---"
sudo apt-get install -y debconf-utils -y > /dev/null
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password $DBPASSWD"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $DBPASSWD"
sudo apt-get install -y mysql-server mysql-client
sudo sed -i 's/bind-address/bind-address = 0.0.0.0#/' /etc/mysql/mysql.conf.d/mysqld.cnf
sudo mysql -u root -proot -e "GRANT ALL PRIVILEGES ON *.* TO '$DBUSER'@'%' IDENTIFIED BY '$DBUSER' WITH GRANT OPTION; FLUSH PRIVILEGES;"
sudo echo 'character-set-server=utf8mb4' >> /etc/mysql/mysql.conf.d/mysqld.cnf
sudo echo 'collation-server=utf8mb4_unicode_ci' >> /etc/mysql/mysql.conf.d/mysqld.cnf
<<<<<<< HEAD
sudo mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql -p$DBPASSWD -u $DBUSER mysql
=======
>>>>>>> 6e6988054381ed6e2139aeda2fd1c2af5170b657
sudo service mysql restart
