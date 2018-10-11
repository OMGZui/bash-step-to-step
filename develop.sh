#!/usr/bin/env bash

#=================================================
#	System Required: CentOS 6+/Debian 6+/Ubuntu 14.04+
#	Description: lnmp脚本
#	Version: 1.0
#	Author: omgzui
#=================================================

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 确保是root用户
if [[ `id -u` != "0" ]]; then
    echo "请使用root用户"
    exit 1
fi

# apt操作
apt -y update && apt -y upgrade

# git
apt -y install git

# oh-my-zsh
apt -y install zsh wget curl
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
zsh

# nginx
apt -y install nginx

# mysql
apt -y install mysql-server mysql-client

# php
apt -y install software-properties-common
add-apt-repository ppa:ondrej/php
apt -y update
apt install php7.2
apt install php-pear php7.2-fpm php7.2-curl php7.2-dev php7.2-gd php7.2-mbstring php7.2-zip php7.2-mysql php7.2-xml
php -v

# composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '93b54496392c062774670ac18b134c3b3a95e5a5e5c8f1a9f115f203b75bf9a129d5daa8ba6a13e2cc8a1da0806388a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

#node
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
command -v nvm
nvm install 8
nvm use 8

# 启动
seservice nginx start
seservice mysql start
seservice php7.2-fpm start

# zsh
zsh
