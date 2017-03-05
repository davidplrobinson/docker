#~/bin/bash

~/docker/docker_install.sh
mkdir ~/wordpress
cp -avr wordpress/* ~/wordpress
cd ~/wordpress
./go.sh
