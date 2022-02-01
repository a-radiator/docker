#!/bin/bash
apt update -y

#install required packages for docker engine
apt install ca-certificates curl gnupg lsb-release -y

#install gpg key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -y

#install docker community edition
apt install docker-ce docker-ce-cli containerd.io

#test
docker run hello-world
