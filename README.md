![Vagrant+PHP7](http://i.imgur.com/GNrh3Mu.png)

# Laravel virtual machine
* Ubuntu 16.04
* Nginx (latest)
* PHP (7.2.x)
* Composer (latest)
* NodeJs (8.x)
* Npm (latest)
* MySQL (latest)
* Htop
* Mc

# Install
1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and [Vagrant](https://www.vagrantup.com/)
2. Clone project
3. _(optional)_ Run on host machine:
    * Linux:
        * `sudo apt-get install dnsmasq`
        * `echo "address=/.test/192.168.3.3" >> /etc/dnsmasq.conf`
    * macOS:
        * `brew install dnsmasq`
        * [Using Dnsmasq for local development on OS X](https://passingcuriosity.com/2013/dnsmasq-dev-osx/)
4. Go to directory with README file (`cd laravel-vm`)
5. Run `vagrant up`

# Development
1. Go to `laravel-vm/www/`
2. Make `directory/public/index.php`
3. Open url `http://directory.test/`
4. Enjoy :sunglasses:

# Domains
* `domain.test`
  * `./www/domain/public/index.php`
* `developer.test`
  * `./www/developer/public/index.php`

# Subdomain
* `sub.domain.test`
  * `./www/domain/sub/www/index.php`
* `sub.developer.test`
  * `./www/developer/sub/www/index.php`

# MySQL
* login: `root`
* password: `root`

# Why `.test`?
[Read more at Laravel news](https://laravel-news.com/chrome-63-now-forces-dev-domains-https)
