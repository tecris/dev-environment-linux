# Development environment by Ansible

[**Docker - way**](#with-docker)

[**Vagrant - way**](#with-vagrant)

### With Docker
 - Basically this is just to test on a clean machine.
   * `$ docker build --no-cache -t casadocker/dev-linux .`

### With Vagrant
 - This is in case nature forces me to work on a Windows machine that has VirtualBox
 - It has a two step process
   1. See [README](packer-ubuntu/README.md)
   2. `$ vagrant up`
