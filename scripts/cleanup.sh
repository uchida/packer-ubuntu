#!/bin/bash
set -ex
rm /var/lib/dhcp/*
rm -rf /dev/.udev/
apt-get autoremove -y
apt-get clean -y
