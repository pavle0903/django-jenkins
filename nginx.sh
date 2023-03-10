#!/bin/bash

sudo cp -rf app.conf /etc/nginx/sites-available/app
chmod 710 /var/lib/jenkins/workspace/django-cicd

sudo ln -s /etc/nginx/sites-available/app /etc/nginx/sites-enabled
sudo nginx -t

sudo systemctl restart nginx

sudo systemctl start nginx
echo "Nginx je pokrenut"

sudo systemctl status nginx