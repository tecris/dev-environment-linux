## Ubuntu 16.04 development environment built with Ansible & Vagrant
[**Bare Ubuntu**](#bare-ubuntu)

[**Docker - way**](#with-docker)

[**Vagrant - way**](#with-vagrant)

### Bare Ubuntu
---
 - one liner:
   * `$ ./bareUbuntu.sh`

### With Docker
---
 - This is just to test a clean/fresh install.
   * `$ docker build --no-cache -t casadocker/dev-linux-base base`
   * `$ docker build --no-cache -t casadocker/dev-linux user-customized`

### With Vagrant
---
 - If mother nature decides I have to work on a Windows machine that has VirtualBox

#### Pre-requisites:

  * [Oracle VM VirtualBox](http://www.virtualbox.org) & [Guest Additions](https://www.virtualbox.org/manual/ch04.html) v5.0.14
  * [Vagrant](http://www.vagrantup.com) v1.9.1
  * [Ansible](http://docs.ansible.com/intro_installation.html#latest-releases-via-apt-ubuntu) v2.0

#### Build vagrant box:

  1. Build base vagrant box, see `base/buildVagrant.sh`
  1. Add user to base image, see `user-customized/buildVagrant.sh`

#### Start box/image
  1. `$ cd demo`
  1. `$ vagrant up`
