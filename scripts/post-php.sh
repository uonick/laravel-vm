echo -e "\n--- POST-PHP ---\n"
sudo sed -i 's/short_open_tag = Off/short_open_tag = On/' /etc/php/7.1/fpm/php.ini
sudo sed -i 's/error_reporting = E_ALL & ~E_DEPRECATED & ~E_STRICT/error_reporting = E_ALL/' /etc/php/7.1/fpm/php.ini
sudo sed -i 's/display_startup_errors = Off/display_startup_errors = On/' /etc/php/7.1/fpm/php.ini
sudo sed -i 's/display_errors = Off/display_errors = On/' /etc/php/7.1/fpm/php.ini
sudo sed -i 's/listen =/listen = 127.1.0.1:9000 ;/' /etc/php/7.1/fpm/pool.d/www.conf
service php7.1-fpm restart
