# SSH Hardening Guide

## Edit SSH Configuration
```bash
sudo nano /etc/ssh/sshd_config
```

## Recommended Settings
```
PermitRootLogin no
PasswordAuthentication no
AllowUsers youruser
Port 2222
```

## Restart SSH
```bash
sudo systemctl restart sshd
```

## Tips
- Use key-based authentication.
- Disable unused ports.
- Monitor failed login attempts.
