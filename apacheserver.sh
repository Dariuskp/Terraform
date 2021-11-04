#!/bin/bash

sudo apt update
sudo apt install apache2
sleep 3
echo -e "Apache server \vhas been provisioned!"
echo List appplication profiles needed to enable access
sudo ufw app list 
sudo ufw allow 'Apache'
sudo systemctl status apache2
hostname -I
sleep 2
echo -e "Server is running \vand \vListening on current IP address!"
