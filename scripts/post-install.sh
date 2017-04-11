sudo service nginx restart
sudo service php7.1-fpm restart
sudo usermod -a -G www-data vagrant

echo "----------------------------------------"
echo "===>  VIRTUAL MACHINE READY ;)"
echo "----------------------------------------"
