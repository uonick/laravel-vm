# Ubuntu 16.04 Vagrant Laravel
* Nginx (1.10)
* PHP (7.0)
* Composer (1.2.x)
* MySQL (5.7.x)

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
7. :tada: :balloon:

# Development
1. Go to `laravel-vm/www/`
2. Run `composer create-project --prefer-dist laravel/laravel blog`
3. Open url `http://blog.dev/`
4. Enjoy :sunglasses:

# MySQL
* login: `root`
* password: `root`
