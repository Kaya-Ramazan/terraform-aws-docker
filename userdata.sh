#!/bin/bash
hostnamectl set-hostname ${server-name}
yum update -y
amazon-linux-extras install docker -y 
systemctl start docker 
systemctl enable docker 
usermod -a -G docker ec2-user
# install docker-compse
curl -L https://github.com/docker/compose/releases/download/v2.29.1/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
-o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose