#!/bin/bash

## Install ansible

IP=$(hostname -I | awk '{print $2}')

echo "START - Ansible installation - "$IP

echo "------------epel-release -------------"
yum install epel-release -y 


echo "------------ansi -------------"
yum install ansible -y 
