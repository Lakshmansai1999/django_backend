#!/usr/bin/env bash
sudo apt-get update

# activate the virtual environment
cd /home/lucky/Desktop/django_project
source /home/lucky/Desktop/django_project/venv/bin/activate
pip install -r requirements.txt
python manage.py migrate
python manage.py collectstatic --no-input

sudo service apache2 stop

sudo service apache2 status

sudo service apache2 restart

sudo service apache2 status

