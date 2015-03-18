#!/bin/bash
set -ex
apt-get update
apt-get upgrade -y
echo "UseDNS no" >> /etc/ssh/sshd_config
