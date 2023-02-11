#!/bin/bash

source env/bin/activate

cd /var/lib/jenkins/workspace/django-cicd/app

python3 manage.py makemigrations
python3 manage.py migrate

echo "Migracija je gotova"

cd /var/lib/jenkins/workspace/django-cicd

sudo cp -rf gunicorn.socket /etc/systemd/system
sudo cp -rf gunicorn.service /etc/systemd/system

echo "$USER"
echo "$PWD"

sudo systemctl daemon-reload
sudo systemctl enable gunicorn
sudo systemctl start gunicorn

echo "Gunicorn je stratovan"

sudo systemctl status gunicorn
sudo systemctl restart gunicorn
