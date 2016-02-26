Build base(*) Ubuntu vagrant box
===========================================

(*) vanilla install with one user: vagrant

Based on https://github.com/rokhmanov/packer-teiid

### Usage
1. Generate Vagrant Box from Template:
   * `$ packer build ubuntu-14.04.3-desktop-amd64.json`
2. Build broken here, ssh does not get installed :(. Manual assistance required after reboot, open terminal & execute
   * `$ sudo apt-get install -y openssh-server`

### Additional Notes
* User credentials user/pwd vagrant/vagrant
* Root password: not set
* SSH: ssh -p 2222 -l vagrant localhost
* Guest mounted working directory: /vagrant
