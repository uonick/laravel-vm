# Ubuntu 16.04 Vagrant Laravel
![Vagrant+PHP7](https://i.imgur.com/3gzpT3P.png)
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
3. Clone this project
4. Go to directory with README file (`cd laravel-vm`)
5. Run `vagrant up`
6. Run on host machine:
    * Linux:
        * `sudo apt-get install dnsmasq`
        * `echo "address=/.dev/192.168.3.3" >> /etc/dnsmasq.conf`
    * macOS:
        * `brew install dnsmasq`
        * [Using Dnsmasq for local development on OS X](https://passingcuriosity.com/2013/dnsmasq-dev-osx/)
7. :tada: :balloon:

# Development
1. Go to `laravel-vm/www/`
2. Run `composer create-project --prefer-dist laravel/laravel blog`
3. Open url `http://blog.dev/`
4. Enjoy :sunglasses:

# MySQL
* login: `root`
* password: `root`
