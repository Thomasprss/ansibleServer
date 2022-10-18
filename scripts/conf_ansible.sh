#!/bin/bash

## Configure ansible

echo "[1] Add hosts"
rm -f /etc/ansible/hosts
cp /vagrant/files/hosts /etc/ansible/

echo "[2] disable check ssh key"
ansible-config init --disable > /etc/ansible/ansible.cfg
sed -i 's/;private_key_file=/private_key_file=\/home\/vagrant\/.ssh\/ansibleKey/g' /etc/ansible/ansible.cfg
sed -i 's/;host_key_cheking=True/phost_key_cheking=False/g' /etc/ansible/ansible.cfg

echo "[3] conf ssh"
ssh-keygen -b 2048 -t rsa -f /home/vagrant/.ssh/ansibleKey -C "vagrant@ansible" -q -N ""
cp .ssh/ansibleKey.pub /vagrant/files
chmod 700 .ssh/ansibleKey
chown vagrant:vagrant .ssh/ansibleKey