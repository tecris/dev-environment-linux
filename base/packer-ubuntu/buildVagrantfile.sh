#!/bin/bash

vagrant init -m ubuntu-14.04.3-desktop-amd64-base.box

sed -i -e 's/end//g' Vagrantfile
echo "  config.vm.provider \"virtualbox\" do |vb|" >> Vagrantfile
echo "    vb.gui" = true >> Vagrantfile
echo "  end" >> Vagrantfile
echo "end" >> Vagrantfile
