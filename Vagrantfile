# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

    config.vm.box = "bento/ubuntu-16.04"
    config.vm.box_check_update = true
    config.vm.hostname = "laravel-vm"

    config.vm.network :forwarded_port, guest: 80, host: 8080
    config.vm.network :forwarded_port, guest: 3306, host: 3306
    config.vm.network :forwarded_port, guest: 6379, host: 6379

    config.vm.network "private_network", ip: "192.168.3.3"

    config.vm.provider :virtualbox do |v|
        v.customize ["modifyvm", :id, "--memory", "2048"]
        v.customize ["modifyvm", :id, "--vram", "16"]
    end

    # set project folder here:
    config.vm.synced_folder "/Users/uonick/Projects/","/vagrant/www",
        owner: "vagrant",
        group: "www-data",
        mount_options: ["dmode=776,fmode=664"]

    config.vm.provision "shell", path: "./scripts/common.sh"
    config.vm.provision "shell", path: "./scripts/nginx.sh"
    config.vm.provision "shell", path: "./scripts/post-nginx.sh"
    config.vm.provision "shell", path: "./scripts/php.sh"
    config.vm.provision "shell", path: "./scripts/post-php.sh"
    config.vm.provision "shell", path: "./scripts/composer.sh"
    config.vm.provision "shell", path: "./scripts/mysql.sh"
    config.vm.provision "shell", path: "./scripts/frontend.sh"
    config.vm.provision "shell", path: "./scripts/post-install.sh"
end
