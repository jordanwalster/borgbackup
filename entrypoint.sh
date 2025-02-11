#!/bin/sh

# Create backup user
echo "Creating borg backup user"
adduser -D borg 

# Set ssh password
echo "Updating password..."
echo "borg:$SSH_PASSWORD" | chpasswd

# Change borg folder ownership to be owned by borg
echo "Setting file ownership"
chown -R borg:borg /opt/borg 

# Set default login path to /opt/borg
echo 'cd /opt/borg' >> /home/borg/.profile

# Start SSHD
/usr/sbin/sshd -D
