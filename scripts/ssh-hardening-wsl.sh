#!/bin/bash

SSHD_CONFIG="/etc/ssh/sshd_config"

echo "Backing up sshd_config..."
cp $SSHD_CONFIG ${SSHD_CONFIG}.bak

echo "Applying SSH hardening..."
sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin no/' $SSHD_CONFIG
sed -i 's/^#\?PasswordAuthentication.*/PasswordAuthentication no/' $SSHD_CONFIG
sed -i 's/^#\?Port 22/Port 2222/' $SSHD_CONFIG

# Restart SSH only if systemctl available
if command -v systemctl &> /dev/null; then
    echo "Restarting SSH service..."
    systemctl restart ssh || echo "Failed to restart SSH: maybe WSL?"
else
    echo "systemctl not found, skipping restart (WSL limitation)"
fi

echo "SSH hardening completed successfully."

