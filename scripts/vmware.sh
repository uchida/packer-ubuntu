#!/bin/sh
set -ex
mkdir /tmp/vmfusion
mkdir /tmp/vmfusion-archive
mount -o loop linux.iso /tmp/vmfusion
tar xzf /tmp/vmfusion/VMwareTools-*.tar.gz -C /tmp/vmfusion-archive
umount /tmp/vmfusion
rm linux.iso
/tmp/vmfusion-archive/vmware-tools-distrib/vmware-install.pl --default
rm -rf /tmp/vmfusion
rm -rf /tmp/vmfusion-archive
