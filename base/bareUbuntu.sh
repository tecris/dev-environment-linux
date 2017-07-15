#!/bin/bash

sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible
# sudo apt-get install -y ansible=2.0.0.2-2

sudo ansible-galaxy install -r requirements.yml

cd ansible && sudo ansible-playbook -i hosts playbook.yml -c local --skip-tags "only-on-docker"
