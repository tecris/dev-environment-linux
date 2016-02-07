#!/bin/bash


sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

ansible-galaxy install williamyeh.oracle-java

# wget https://github.com/tecris/dev-linux/archive/master.zip

cd ansible && sudo ansible-playbook -i hosts playbook.yml -c local --skip-tags "only-on-docker"

#
# or,
# sudo su - 
# echo -e '[local]\nlocalhost\n' >> /etc/ansible/hosts
# cat /etc/ansible/hosts 
# sudo ansible-playbook playbook.yml -c local
