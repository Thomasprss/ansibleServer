#!/bin/bash

## Install ansible

IP=$(hostname -I | awk '{print $2}')

echo "START - Ansible installation - "$IP

apt update 
apt install software-properties-common -y 
add-apt-repository --yes --update ppa:ansible/ansible 
apt install ansible -y \
    > /dev/null 2>&1 