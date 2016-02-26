#!/bin/bash

mv ubuntu-14.04.3-desktop-amd64-packed.box ubuntu-14.04.3-desktop-amd64-packed.box.bak

# provision packages
vagrant up

# power off vm (this is needed to execute next step vagrant package ...)
vagrant halt

# package box
vagrant package --output ubuntu-14.04.3-desktop-amd64-packed.box

# add box to vagrant repository (needed for next step, user configuration)
vagrant box add ubuntu-14.04.3-desktop-amd64-packed ubuntu-14.04.3-desktop-amd64-packed.box
