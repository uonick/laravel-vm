DBUSER=root
DBPASSWD=root

echo -e "\n--- MYSQL ---\n"
sudo apt-get install -y debconf-utils -y > /dev/null
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password $DBPASSWD"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $DBPASSWD"
sudo apt-get install -y mysql-server mysql-client
sudo sed -i 's/bind-address/bind-address = 0.0.0.0#/' /etc/mysql/mysql.conf.d/mysqld.cnf
sudo mysql -u root -proot -e "GRANT ALL PRIVILEGES ON *.* TO '$DBUSER'@'%' IDENTIFIED BY '$DBUSER' WITH GRANT OPTION; FLUSH PRIVILEGES;"
sudo service mysql restart
