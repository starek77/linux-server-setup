# Firewall Setup Guide

## Using UFW (Uncomplicated Firewall)
```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 22/tcp     # SSH
sudo ufw allow 80/tcp     # HTTP
sudo ufw allow 443/tcp    # HTTPS
sudo ufw enable
sudo ufw status
```

## Best Practices
- Only open necessary ports.
- Regularly review firewall rules.
- Consider rate limiting SSH connections.
