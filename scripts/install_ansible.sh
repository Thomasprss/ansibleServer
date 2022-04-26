#!/bin/bash

## Install ansible

IP=$(hostname -I | awk '{print $2}')

echo "START - Ansible installation - "$IP

echo "------------update -------------"
apt update 

echo "------------software -------------"
apt install software-properties-common -y 

echo "------------repo -------------"
add-apt-repository --yes --update ppa:ansible/ansible -y

echo "------------ansi -------------"
apt install ansible -y \
    > /dev/null 2>&1 