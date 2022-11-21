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

#### Environment variables
  ```
  # ls -l /opt/
    total 8
    drwxr-xr-x 6 root   root   4096 Nov 21 17:18 apache-maven-3.8.6
    lrwxrwxrwx 1 root   root     12 Nov 21 17:13 jdk -> jdk-17.0.5+8
    drwxr-xr-x 9 tecris tecris 4096 Oct 19 16:56 jdk-17.0.5+8
    lrwxrwxrwx 1 root   root     18 Nov 21 17:18 maven -> apache-maven-3.8.6

    # cat /etc/profile.d/java.sh
    export JAVA_HOME=/opt/jdk
    PATH=${JAVA_HOME}/bin:${PATH}

    # cat /etc/profile.d/maven.sh
    export MAVEN_HOME=/opt/maven
    PATH=${MAVEN_HOME}/bin:${PATH}
  ```
