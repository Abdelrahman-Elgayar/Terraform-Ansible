#!/bin/bash
echo "This is Abdelrahman Installing apache2"
sudo apt update -y
sudo apt install apache2 -y
sudo systemctl enable --now apache2
echo "Completed Installing apache2"
