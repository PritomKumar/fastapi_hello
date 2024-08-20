#!/bin/bash
#date
#author
#purpose

echo "bash script for creating new server for already saved persistant volumn"

# actually you don't need to do anything. It saves all the systemctl services from the persistant volumn. So setting it up properly once is enough.

sudo apt update
sudo apt upgrade

cd fastapi_hello
source venv/bin/activate

pip install --upgrade pip
pip install -r requirements.txt
sudo apt update

sudo systemctl restart gunicorn.service
sudo systemctl restart caddy


