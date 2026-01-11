#!/bin/bash

# Create .ssh directory for root user
mkdir -p /root/.ssh
chmod 700 /root/.ssh

# Add public SSH key (id_rsa.pub) from aws-client
cat <<EOF >> /root/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQXXXXXXXXXXXXXXXXXXXXXXXXXXXX user@aws-client
EOF

# Set correct permissions
chmod 600 /root/.ssh/authorized_keys
chown -R root:root /root/.ssh
