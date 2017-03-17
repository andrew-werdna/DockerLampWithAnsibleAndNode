#!/bin/bash

USRBIN="/usr/local/bin"

mkdir -p $USRBIN
echo -e "\n\nGetting Symfony Installer\n\n"
curl -LsS https://symfony.com/installer -o "${USRBIN}/symfony"
wait
chmod a+x "${USRBIN}/symfony"
