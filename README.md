![Vagrant+PHP7](https://i.imgur.com/u1Rd6gQ.png)

[PHP 7.2 version](https://github.com/uonick/laravel-vm)

# Vagrant Laravel vm

* Ubuntu 16.04
* Nginx (latest)
* PHP (7.1.x)
* Composer (latest)
* NodeJs (7.x)
* Npm (latest)
* MySQL (latest)
* Htop
* Mc

# Install
1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. Install [Vagrant](https://www.vagrantup.com/)
3. Clone project
4. Run on host machine:
    * Linux:
        * `sudo apt-get install dnsmasq`
        * `echo "address=/.dev/192.168.3.3" >> /etc/dnsmasq.conf`
    * macOS:
        * `brew install dnsmasq`
        * [Using Dnsmasq for local development on OS X](https://passingcuriosity.com/2013/dnsmasq-dev-osx/)
5. Go to directory with README file (`cd laravel-vm`)
6. Run `vagrant up`
7. :tada: :balloon:


# Development
1. Go to `laravel/www/`
2. Make `directory/public/index.php`
3. Open url `http://directory.dev/`
4. Enjoy :sunglasses:

# Domains
* `domain.dev`
  * `./www/domain/public/index.php`
* `developer.dev`
  * `./www/developer/public/index.php`

# Subdomain
* `sub.domain.dev`
  * `./www/domain/sub/www/index.php`
* `sub.developer.dev`
  * `./www/developer/sub/www/index.php`

# MySQL
* login: `root`
* password: `root`
