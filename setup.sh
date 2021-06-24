#!/bin/bash

wget https://golang.org/dl/go1.16.5.linux-amd64.tar.gz
sudo hostnamectl set-hostname KuposStage1
sudo hostnamectl set-hostname KuposStage2
sudo tar -xvf go1.16.5.linux-amd64.tar.gz -C /usr/local
sudo chown -R root:root /usr/local/go
mkdir -p $HOME/go/{bin,src}
echo "export GOPATH=$HOME/go" >> .profile 
echo "export PATH=$PATH:$GOPATH/bin"  >> .profile 
echo "export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin" >> .profile 
source .profile 
