#!/bin/bash

UBUNTU_VERSION=14.04.3

mv ubuntu-${UBUNTU_VERSION}-desktop-amd64-base.box ubuntu-${UBUNTU_VERSION}-desktop-amd64-base.box.bak

# build Ubuntu (vagrant-aware) box
packer build ubuntu-${UBUNTU_VERSION}-desktop-amd64.json

# add box to vagrant repository (needed for next step, user configuration)
vagrant box add ubuntu-${UBUNTU_VERSION}-desktop-amd64-base ubuntu-${UBUNTU_VERSION}-desktop-amd64-base.box
