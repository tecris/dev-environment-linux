groupadd -r sudo
usermod -a -G sudo vagrant
cp /etc/sudoers /etc/sudoers.orig
sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=sudo' /etc/sudoers
sed -i -e 's/%sudo ALL=(ALL) ALL/%admin ALL=NOPASSWD:ALL/g' /etc/sudoers
