#! /bin/bash
sudo amazon-linux-extras install epel -y
sudo amazon-linux-extras install java-openjdk11
sudo yum install git -y
sudo yum install docker -y
sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo systemctl status docker.service
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
sudo . ~/.nvm/nvm.sh
sudo nvm install node