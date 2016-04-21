## Ubuntu 14.04 development environment by Ansible

[**Docker - way**](#with-docker)

[**Vagrant - way**](#with-vagrant)

### With Docker
 - Basically this is just to test on a clean machine.
   * `$ docker build --no-cache -t casadocker/dev-linux .`

### With Vagrant
 - If mother nature decides I have to work on a Windows machine that has VirtualBox

#### Pre-requisites:

  * [Ubuntu 14.04.3 Desktop x64 iso image](http://www.ubuntu.com) v14.04.3
  * [Oracle VM VirtualBox](http://www.virtualbox.org) & [Guest Additions](https://www.virtualbox.org/manual/ch04.html) v5.0.14
  * [Vagrant](http://www.vagrantup.com) v1.8.1
  * [Packer](http://www.packer.io) v0.9
  * [Ansible](http://docs.ansible.com/intro_installation.html#latest-releases-via-apt-ubuntu) v2.0

#### Build vagrant box
    1. [Build](packer-ubuntu/README.md) ubuntu base image
    2. Add packages to base image `$ ./buildVagrant.sh`

#### Start box/image
    1. `$ cd demo && vagrant up`
