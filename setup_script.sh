#!/bin/bash
lsb_release -cs 

#install required packages for docker engine
apt-get install ca-certificates curl gnupg lsb-release software-properties-common -y  

#install gpg key
curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#install docker community edition
apt-get install docker-ce docker-ce-cli containerd.io -y

#build image 
docker build -t hello-peak . 
apt-get update -y 

#run container
docker run hello-peak


