# bash
chmod +x bash_script.sh
./bash_script.sh

# SSH Access
ssh-keygen -R 86.50.168.61
ssh ubuntu@86.50.168.61 -i ~/.ssh/new.pem

# System Update and Package Installation
sudo apt update
sudo apt upgrade
sudo apt-get install python3
sudo apt install python3-pip
sudo apt install python3.10-venv
sudo apt update

# set up SSH on the persistant volumn
ssh-keygen -t ed25519 -C "pritom.das@helsinki.fi"
cat /home/ubuntu/.ssh/id_ed25519.pub

# Git Repository Setup
git clone git@github.com:PritomKumar/fastapi_hello.git
cd fastapi_hello

# Python Virtual Environment Setup
python3 -m venv venv
source venv/bin/activate
sudo apt update

# Python Package Installation
pip install --upgrade pip
pip install -r requirements.txt
uvicorn main:app
sudo apt update

# Gunicorn Setup
## sudo pip3 install gunicorn 
sudo nano /etc/systemd/system/gunicorn.service

sudo systemctl daemon-reload
sudo systemctl start gunicorn.service
sudo systemctl enable gunicorn.service
sudo systemctl status gunicorn.service


# Caddy Web Server Installation and Setup
echo "deb [trusted=yes] https://apt.fury.io/caddy/ /" | sudo tee -a /etc/apt/sources.list.d/caddy-fury.list
sudo apt update
sudo apt install -y caddy
caddy version

# Caddy Configuration and Service Management
sudo nano /etc/caddy/Caddyfile
sudo systemctl start caddy
sudo systemctl enable caddy
sudo systemctl status caddy

# IP Address for Access
86.50.168.61:80

# Service Management Commands
sudo systemctl stop gunicorn.service
sudo systemctl stop caddy

# Special commands for caddy
sudo systemctl reload caddy
sudo systemctl restart caddy

# To see changes restart gunicorn.service and caddy
sudo systemctl restart gunicorn.service
sudo systemctl restart caddy

# to check all running services
systemctl --type=service --state=running

# for known hosts
ssh-keygen -R 86.50.169.104
