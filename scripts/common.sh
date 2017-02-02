echo -e "\n--- COMMON ---\n"
sudo apt-get -qq update
sudo apt-get install -y language-pack-UTF-8
sudo apt-get install -y build-essential python-software-properties software-properties-common
apt-get install -y git  > /dev/null
apt-get install -y mc htop unzip grc gcc make libpcre3 libpcre3-dev lsb-core autoconf > /dev/null
