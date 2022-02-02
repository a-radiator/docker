#!/bin/bash
apt-get update -y

echo "test" 

#install required packages for docker engine
apt-get install ca-certificates curl gnupg lsb-release software-properties-common -y  

#install gpg key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - 2> /dev/null

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#install docker community edition
apt-get install docker-ce docker-ce-cli containerd.io -y

#build image 
docker build -t hello-peak . 

#run container
docker run hello-peak

