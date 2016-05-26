#!/bin/bash

# wget https://github.com/tecris/dev-linux/archive/master.zip

# sudo apt-get install -y software-properties-common
# sudo apt-add-repository ppa:ansible/ansible
# sudo apt-get update
#sudo apt-get install -y ansible

# ubuntu16.04 (xenial)
sudo apt-get install -y ansible=2.0.0.2-2

sudo ansible-galaxy install -r requirements.yml

cd ansible && sudo ansible-playbook -i hosts playbook.yml -c local --skip-tags "only-on-docker"
