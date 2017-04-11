echo -e "\n--- COMMON ---\n"
sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get -qq update
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
sudo locale-gen en_US.UTF-8
sudo apt-get install -y build-essential python-software-properties software-properties-common
sudo apt-get install -y git mc nano htop nmon unzip grc gcc make libpcre3 libpcre3-dev lsb-core autoconf > /dev/null
