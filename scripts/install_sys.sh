#!/bin/bash

## INstall base system

IP=$(hostname -I | awk '{print $2}')

echo "START - Common configuration for all Vms - "$IP

echo "=> [1]: Installing required packages..."
DEBIAN_FRONTEND=noninteractive
apt-get update  -o Dpkg::Progress-Fancy="0" -q -y >> /tmp/install_sys.log 2>&1
