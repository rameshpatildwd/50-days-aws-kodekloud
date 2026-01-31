# Install and Configure Nginx on Ubuntu Server

# Update package lists
sudo apt-get update -y

# Install Nginx
sudo apt-get install nginx -y

# Start Nginx service
sudo systemctl start nginx

# Enable Nginx to start on boot
sudo systemctl enable nginx