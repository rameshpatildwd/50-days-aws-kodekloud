#!/bin/bash

# Update packages
sudo dnf update -y

# Install Nginx
sudo dnf install -y nginx

# start Nginx service
sudo systemctl start nginx

# Enable Nginx to start on boot
sudo systemctl enable nginx