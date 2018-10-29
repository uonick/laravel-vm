echo -e "\n--- COMPOSER ---\n"
sudo curl -sS https://getcomposer.org/installer | php > /dev/null
sudo mv composer.phar /usr/local/bin/composer
composer global require "squizlabs/php_codesniffer=*"
sudo ln -s /home/vagrant/.config/composer/vendor/bin/phpcs /usr/local/bin/phpcs
