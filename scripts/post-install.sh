sudo service nginx restart
sudo service php7.2-fpm restart
sudo usermod -a -G www-data vagrant

echo "----------------------------------------"
echo "===========>  Done ;)"
echo "----------------------------------------"
