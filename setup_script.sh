#!/bin/bash

#install required packages for docker engine
apt-get install ca-certificates curl gnupg lsb-release software-properties-common -y  

#install gpg key
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

#add docker ce repo
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu/dists $(lsb_release -cs) stable"

#install docker community edition
apt-get install docker-ce docker-ce-cli containerd.io -y

#build image 
docker build -t hello-peak . 
apt-get update -y 

#run container
docker run hello-peak


