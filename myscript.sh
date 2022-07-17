#! /bin/bash

sudo apt update -y
sudo apt-get install fontconfig openjdk-11-jre 
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update -y
sudo apt install jenkins -y
sudo systemctl start jenkins
echo 'clearing screen...' && sleep 5
clear
echo 'Jenkins is Installed'
echo 'This is the Default password :' $(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)

