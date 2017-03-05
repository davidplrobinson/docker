#~/bin/bash

~/docker/docker_install.sh
mkdir ~/apache
cp -avr apache/* ~/apache
cd ~/apache
./go.sh
