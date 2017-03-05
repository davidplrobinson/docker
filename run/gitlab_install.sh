#~/bin/bash

~/docker/docker_install.sh
mkdir ~/gitlab
cp -avr gitlab/* ~/gitlab
cd ~/gitlab
./go.sh
