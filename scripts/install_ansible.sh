#!/bin/bash

## Install ansible

IP=$(hostname -I | awk '{print $2}')
LOG_FILE = /vagrant/logs/ansible.log

echo "START - Ansible installation - "$IP

apt update -y \ >>$LOG_FILE 2>&1
apt install software-properties-common -y \ >>$LOG_FILE 2>&1
add-apt-repository --yes --update ppa:ansible/ansible \ >>$LOG_FILE 2>&1
apt install ansible -y \
    > /dev/null 2>&1 \
    >>$LOG_FILE 2>&1