#!/bin/bash

sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

sudo ansible-galaxy install -r requirements.yml

sudo ansible-playbook -i base/ansible/hosts base/ansible/playbook.yml -c local --skip-tags "only-on-docker"
sudo ansible-playbook -i user-customized/ansible/hosts user-customized/ansible/playbook.yml -c local --skip-tags "only-on-docker"
