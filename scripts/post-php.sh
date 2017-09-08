echo -e "\n--- POST-PHP ---\n"
sudo sed -i 's/short_open_tag = Off/short_open_tag = On/' /etc/php/7.2/fpm/php.ini
sudo sed -i 's/error_reporting = E_ALL & ~E_DEPRECATED & ~E_STRICT/error_reporting = E_ALL/' /etc/php/7.2/fpm/php.ini
sudo sed -i 's/display_startup_errors = Off/display_startup_errors = On/' /etc/php/7.2/fpm/php.ini
sudo sed -i 's/display_errors = Off/display_errors = On/' /etc/php/7.2/fpm/php.ini
