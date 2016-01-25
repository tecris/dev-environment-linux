#!/bin/bash

# git clone git@github.com:tecris/dev-linux.git

sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

# sudo su - 
# echo -e '[local]\nlocalhost\n' >> /etc/ansible/hosts
# cat /etc/ansible/hosts 
# sudo ansible-playbook playbook.yml -c local

