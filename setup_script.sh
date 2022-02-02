#!/bin/bash
apt-get update -y

echo "test" 

#install required packages for docker engine
apt-get install ca-certificates curl gnupg lsb-release software-properties-common -y  

#install gpg key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o | apt-key add - 2> /dev/null);

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#install docker community edition
apt-get install docker-ce docker-ce-cli containerd.io

#build image 
docker build -t hello-peak . 

#run container
docker run hello-peak

