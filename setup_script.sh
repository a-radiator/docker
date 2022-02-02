#!/bin/bash
#apt-get update -y

echo "test" 

#install required packages for docker engine
apt-get install ca-certificates curl gnupg lsb-release software-properties-common -y  

curl -fsSL https://get.docker.com -o get-docker.sh
chmod +x get-docker.sh
./get-docker.sh

#build image 
docker build -t hello-peak . 

#run container
docker run hello-peak

