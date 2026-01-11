# Nginx Installation Guide

## Install Nginx
```bash
sudo apt update
sudo apt install nginx -y
```

## Start and Enable Nginx
```bash
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl status nginx
```

## Configure a Site
```bash
sudo nano /etc/nginx/sites-available/example.com
sudo ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl reload nginx
```

## Tips
- Use strong SSL certificates (Let's Encrypt).
- Keep Nginx updated.
- Monitor access and error logs regularly.
