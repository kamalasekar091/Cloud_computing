#!/bin/bash

echo "hello" >  /home/ubuntu/hello.txt
sudo apt-get update -y
sudo apt-get install -y apache2
sudo systemctl enable apache2
sudo systemctl start apache2
git clone git@github.com:illinoistech-itm/krose1.git
cd /var/www
sudo apt-get install -y git
#git clone git@github.com:illinoistech-itm/krose1
git clone https://github.com/kamalasekar091/boostrap-website
cd html
sudo rm -rf *
cd ..
sudo cp -a boostrap-website/. html/
