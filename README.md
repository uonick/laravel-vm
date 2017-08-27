![Vagrant+PHP7](https://i.imgur.com/u1Rd6gQ.png)

# Laravel virtual box machine
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
        * `echo "address=/.dev/192.168.3.3" >> /etc/dnsmasq.conf`
    * macOS:
        * `brew install dnsmasq`
        * [Using Dnsmasq for local development on OS X](https://passingcuriosity.com/2013/dnsmasq-dev-osx/)
4. Go to directory with README file (`cd laravel-vm`)
5. Run `vagrant up`

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
