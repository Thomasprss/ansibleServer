#!/bin/bash

## Install ansible

IP=$(hostname -I | awk '{print $2}')

echo "START - Ansible installation - "$IP

echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu focal main" >> /etc/apt/sources.list

echo "------------epel-release -------------"
apt install gnupg -y
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
apt update

echo "------------ansi -------------"
apt install ansible -y 
