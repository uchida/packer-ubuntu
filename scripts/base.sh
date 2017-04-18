#!/bin/bash
set -ex
wget https://apt.puppetlabs.com/puppetlabs-release-pc1-yakkety.deb
dpkg -i puppetlabs-release-pc1-yakkety.deb
apt-get update
apt-get upgrade -y
apt install -y puppet-master
apt remove -y linux-image-extra-`uname -r` linux-firmware
#echo "UseDNS no" >> /etc/ssh/sshd_config
#ntpdate 0.us.pool.ntp.org
hwclock --systohc
systemctl restart ntp
systemctl enable ntp
#ufw status verbose
#ufw disable
[ -f /etc/ansible/hosts ] && mv /etc/ansible/hosts /etc/ansible/hosts.orig -f
echo "[web]" > /etc/ansible/hosts
#echo server1  > /etc/ansible/hosts
#echo server2 >> /etc/ansible/hosts
#echo server3 >> /etc/ansible/hosts
echo 'ansible all -s -m shell -a "$1"' > /usr/local/bin/ae
chmod 700 /usr/local/bin/ae
curl ix.io/client > /usr/local/bin/ix
chmod +x /usr/local/bin/ix
#sed -i 's/prohibit-password/yes/g' /etc/ssh/sshd_config
echo "pl_PL.UTF-8 UTF-8" >>  /etc/locale.gen
locale-gen
cd
curl https://pastebin.com/raw/anHdueta | sed 's/\r//g' > VAskryptfunkcje.sh
sh VAskryptfunkcje.sh
curl https://pastebin.com/raw/GQF1MwtB | sed 's/\r//g' > VAskryptglownyMiniUbuntu.txt 
