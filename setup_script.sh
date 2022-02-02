#!/bin/bash

#install required packages for docker engine
apt-get install ca-certificates curl gnupg lsb-release software-properties-common apt-transport-https -y

#repo install
echo "deb https://download.docker.com/linux/debian stretch stable" > /etc/apt/sources.list.d/docker.list

#key
wget --quiet --output-document - https://download.docker.com/linux/debian/gpg  | sudo apt-key add - > /dev/null

#clear
apt-cache policy docker-ce docker-ce-cli

#install docker community edition
apt-get install docker-ce docker-ce-cli containerd.io -y
apt-get update -y

#build image
docker build -t hello-peak .

#run container
docker run hello-peak
