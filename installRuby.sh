#!/bin/bash


# RUBY
sudo apt-add-repository -y ppa:brightbox/ruby-ng
sudo apt-get update
sudo apt-get install -y ruby2.3 ruby2.3-dev

# $ ruby2.3 -v    # check version
# $ ruby 2.2.0p0 (2014-12-25 revision 49005) [x86_64-linux-gnu]

# RAILS

sudo apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
sudo gem install rails -v 4.2.4

# pg gem - postgresql

postgresql gem
sudo apt-get install -y libpq-dev
sudo gem install pg -v 0.18.4
