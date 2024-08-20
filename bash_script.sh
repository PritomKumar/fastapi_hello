#!/bin/bash
#date
#author
#purpose

echo "bash script for generating everything from scratch"

sudo apt update
sudo apt upgrade
sudo apt-get install python3
sudo apt install python3-pip
sudo apt install python3.10-venv
sudo apt update

git clone git@github.com:PritomKumar/fastapi_hello.git
cd fastapi_hello

python3 -m venv venv
source venv/bin/activate
sudo apt update

pip install --upgrade pip
pip install -r requirements.txt
sudo apt update

sudo nano /etc/systemd/system/gunicorn.service # need to change and copy from the fastapi_hello repo

sudo systemctl daemon-reload
sudo systemctl start gunicorn.service
sudo systemctl enable gunicorn.service

echo "deb [trusted=yes] https://apt.fury.io/caddy/ /" | sudo tee -a /etc/apt/sources.list.d/caddy-fury.list
sudo apt update
sudo apt install -y caddy

sudo nano /etc/caddy/Caddyfile # need to change 
sudo systemctl start caddy
sudo systemctl enable caddy
sudo systemctl status caddy

sudo systemctl restart gunicorn.service
sudo systemctl restart caddy

#END