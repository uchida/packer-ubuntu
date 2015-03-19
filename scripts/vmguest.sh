#!/bin/bash
set -ex
case "$PACKER_BUILDER_TYPE" in
  virtualbox-iso)
    apt-get install -y build-essential "linux-headers-$(uname -r)"
    mount -o loop VBoxGuestAdditions.iso /mnt
    /mnt/VBoxLinuxAdditions.run || :
    umount /mnt
    rm -f VBoxGuestAdditions.iso
    ;;
  vmware-iso)
    apt-get install -y open-vm-tools
    ;;
esac
