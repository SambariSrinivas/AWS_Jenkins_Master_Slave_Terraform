#! /bin/bash
sudo amazon-linux-extras install epel -y
sudo amazon-linux-extras install java-openjdk11
sudo yum install git -y
sudo yum install docker -y
sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo systemctl status docker.service