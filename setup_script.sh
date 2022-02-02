#!/bin/bash
apt update -y

#install required packages for docker engine
apt install ca-certificates curl gnupg lsb-release -y

#install gpg key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o "/tmp/docker_key"
apt-key add /tmp/docker_key
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#install docker community edition
apt install docker-ce docker-ce-cli containerd.io

#build image 
docker build -t hello-peak . 

#run container
docker run hello-peak

