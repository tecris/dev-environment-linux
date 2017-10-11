#!/bin/bash

BOX_NAME=ubuntu-16.04-desktop-amd64-devfox

echo $BOX_NAME
# provision packages
vagrant up

# power off vm (this is needed to execute next step vagrant package ...)
vagrant halt

# package box
vagrant package --output $BOX_NAME.box

# add box to vagrant repository
vagrant box add $BOX_NAME $BOX_NAME.box
