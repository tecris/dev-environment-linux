#!/bin/bash

# provision packages
vagrant up

# power off vm (this is needed to execute next step vagrant package ...)
vagrant halt

# package box
vagrant package --output ubuntu-16.04-desktop-amd64-java-dev.box

# add box to vagrant repository (needed for next step, user configuration)
vagrant box add ubuntu-16.04-desktop-amd64-java-dev ubuntu-16.04-desktop-amd64-java-dev.box 
