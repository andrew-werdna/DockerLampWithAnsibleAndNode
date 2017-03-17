#!/bin/bash

echo -e "\n\nAdding php7 sources\n\n"
cd /tmp

wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list
echo -e "\n\nAdded php7 sources Successfully\n\n"
apt-get update -y
