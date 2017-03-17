#!/bin/bash

echo -e "\n\ninstalling nodejs\n\n"

curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
bash nodesource_setup.sh
apt-get install nodejs

echo -e "\n\ninstalled node successfully\n\n"
