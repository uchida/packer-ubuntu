#!/bin/bash
set -ex
apt-get install -y build-essential "linux-headers-$(uname -r)"
mount -o loop VBoxGuestAdditions.iso /mnt
/mnt/VBoxLinuxAdditions.run || :
umount /mnt
rm -f VBoxGuestAdditions.iso
