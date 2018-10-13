#!/bin/bash

sudo apt-get -y install \
  apt-transport-https \
  ca-certificates \
  curl

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"

sudo apt-get update
sudo apt-get -y install docker-ce
sudo docker run hello-world

echo add this:
nmcli device show | grep IP4.DNS | head -n 1 | awk '{print $2;}'
echo to /etc/docker/daemon.json 

IP=$(nmcli device show | grep IP4.DNS | head -n 1 | awk '{print $2;}')
cat <<EOL
{
  "dns": ["${IP}"]
}
EOL


