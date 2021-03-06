#remove any old versions of docker which may be installed automatically
apt-get remove docker docker-engine docker.io containerd runc -y

#update packages automatically
apt update -y
apt upgrade -y

#install packages required for installing docker ce
apt install ca-certificates curl gnupg gnupg2 lsb-release apt-transport-https software-properties-common -y

#add gpg key for docker
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -  

#add apt repository
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

#install docker
apt update -y
apt install docker-ce docker-ce-cli containerd.io -y

systemctl enable

#test
echo "success!" && systemctl start docker && docker build -t hello-peak . && docker run hello-peak
