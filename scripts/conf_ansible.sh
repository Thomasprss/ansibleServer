#!/bin/bash

## Configure ansible

echo "[1] Add hosts"
echo "[Pc-admin] 

10.1.5.2

[Pc-web]

10.1.9.2

[Pc-database]

10.1.3.2

[Pc-test] 

10.1.11.2

[Pc-secu]
 
10.1.8.3
10.1.8.4" >> /etc/ansible/hosts 

echo "[2] disable check ssh key"
sed -i 's/#host_key_checking = False/host_key_checking = False/g' /etc/ansible/ansible.cfg