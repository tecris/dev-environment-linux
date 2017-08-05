https://app.vagrantup.com/tecris/boxes/ubuntu1604-java-dev
https://atlas.hashicorp.com/help/vagrant/boxes/create

curl 'https://app.vagrantup.com/api/v1/box/tecris/ubuntu1604-java-dev/version/17.08.05/provider/virtualbox/upload?access_token=token'

curl -X PUT --upload-file /home/tecris/workspace/dev-environment-linux/base/ubuntu-16.04-desktop-amd64-java-dev-base-2017.08.05.box \
"https://archivist.vagrantup.com"
