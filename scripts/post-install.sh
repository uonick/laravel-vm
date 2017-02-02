echo -e "\n--- POST-INSTALL ---\n"
sudo service nginx restart
sudo service php7.0-fpm restart
sudo usermod -a -G www-data vagrant


echo "----------------------------------------"
echo "===>  VIRTUAL MACHINE READY TO FLY ;)"
echo "----------------------------------------"
