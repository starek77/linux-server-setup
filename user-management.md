# User Management Guide

## Creating a New User
```bash
sudo adduser username
sudo passwd username
```

## Adding User to Sudo Group
```bash
sudo usermod -aG sudo username
```

## Removing a User
```bash
sudo deluser username
sudo rm -r /home/username
```

## Locking/Unlocking a User
```bash
sudo usermod -L username  # Lock
sudo usermod -U username  # Unlock
```

## Best Practices
- Avoid using root directly.
- Use strong passwords or SSH keys.
- Limit sudo access to only required users.
