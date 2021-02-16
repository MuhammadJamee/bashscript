#!/bin/bash

apt update && apt list --upgradable && upgrade -y /
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add - /
sh -c 'echo deb http://pkg.jenkins-ci.org/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' /
apt update /
apt install jenkins /
systemctl start jenkins /
cat /var/lib/jenkins/secrets/initialAdminPassword 
