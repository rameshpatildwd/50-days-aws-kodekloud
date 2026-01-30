#!/bin/bash

# Update package lists
apt-get update -y

# Install Nginx
apt-get install nginx -y

# Start Nginx service
systemctl start nginx

# Enable Nginx to start on boot
systemctl enable nginx