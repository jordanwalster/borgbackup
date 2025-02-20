#!/bin/sh

# Set ssh password
echo "Updating password..."
echo "borg:$SSH_PASSWORD" | chpasswd

# Start SSHD
/usr/sbin/sshd -D
