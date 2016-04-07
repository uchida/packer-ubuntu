#!/bin/bash
set -ex
rm /var/lib/dhcp/*
rm -rf /dev/.udev/
rm -f /lib/udev/rules.d/75-persistent-net-generator.rules
apt-get autoremove -y
apt-get clean -y
