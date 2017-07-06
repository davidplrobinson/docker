#/bin/bash

# Tested and working on ubuntu. 

apt-get update
apt-get install -y --no-install-recommends linux-image-extra-$(uname -r) linux-image-extra-virtual
apt-get install -y --no-install-recommends apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
#curl -fsSL https://apt.dockerproject.org/gpg | sudo apt-key add -
#add-apt-repository "deb https://apt.dockerproject.org/repo/ ubuntu-$(lsb_release -cs) main"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-get install docker-ce
#apt-get -y install docker-engine
#apt-get -y install docker-compose
#curl -L "https://github.com/docker/compose/releases/download/1.10.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
#chmod +x /usr/bin/docker-compose

docker run hello-world
