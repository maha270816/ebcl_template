#!/bin/sh

# Link systemd as init
ln -s /usr/lib/systemd/systemd /sbin/init

# Setup fstab
mkdir /efi
echo "/dev/vda1 /efi vfat defaults 0 2" | tee /etc/fstab
echo "/dev/vda2 / ext4 defaults,errors=remount-ro 0 1" | tee -a /etc/fstab
