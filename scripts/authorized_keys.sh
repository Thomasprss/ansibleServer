#!/bin/bash

echo "ajout de la clé dans authorized keys"
cat /vagrant/files/ansibleKey.pub | tee -a .ssh/authorized_keys 
