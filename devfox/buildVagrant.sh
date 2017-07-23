#!/bin/bash

# provision packages
vagrant up

# power off vm (this is needed to execute next step vagrant package ...)
vagrant halt

# package box
vagrant package --output ubuntu-16.04-desktop-amd64-mobfox-dev.box
